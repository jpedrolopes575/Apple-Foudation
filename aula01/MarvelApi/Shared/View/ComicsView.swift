
import SwiftUI
import SDWebImageSwiftUI

struct ComicsView: View {
    @EnvironmentObject var homeData: HomeViewModel
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                if homeData.fetchedComics.isEmpty {
                    ProgressView()
                        .padding(.top, 30)
                } else {
                    VStack(spacing: 15) {
                        ForEach(homeData.fetchedComics) { comic in
                            ComicRowView(character: comic)
                        }
                        if homeData.offset == homeData.fetchedComics.count {
                            ProgressView()
                                .padding(.vertical)
                                .onAppear {
                                    print("fetching new data....")
                                    homeData.fetchComics()
                                }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Marvel's Comics")
        }
        .onAppear {
            if homeData.fetchedComics.isEmpty {
                homeData.fetchComics()
            }
        }
    }
}

struct ComicRowView: View {
    var character: Comic
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            WebImage(url: extractImage(data: character.thumbnail))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(character.title)
                    .font(.title3)
                    .fontWeight(.bold)
                
                if let description = character.description {
                    Text(description)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .lineLimit(4)
                        .multilineTextAlignment(.leading)
                }
                
                HStack(spacing: 10) {
                    ForEach(character.urls, id: \.self) { data in
                        NavigationLink(
                            destination: WebView(url: extractURL(data: data))
                                .navigationTitle(extractURLType(data: data)),
                            label: {
                                Text(extractURLType(data: data))
                            }
                        )
                    }
                }
            }
            Spacer(minLength: 0)
        }
    }
}

func extractImage(data: [String: String]) -> URL {
    let path = data["path"] ?? ""
    let ext = data["extension"] ?? ""
    return URL(string: "\(path).\(ext)")!
}

func extractURL(data: [String: String]) -> URL {
    let urlString = data["url"] ?? ""
    return URL(string: urlString)!
}

func extractURLType(data: [String: String]) -> String {
    let type = data["type"] ?? ""
    return type.capitalized
}

