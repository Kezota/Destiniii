//
//  StoryBrain.swift
//  Destini
//
//  Created by KIKI EFENDY on 05/11/20.
//  Copyright © 2020 Kezia MT. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
    let stories = [
        Story(
            index: 0,
            title: "Pada suatu hari anda terbangun di sebuah hutan yang antah berantah. Di depan anda ada tali dan makanan.",
            choice1: "Ambil tali",
            choice1Destination: 1,
            choice2: "Ambil makanan",
            choice2Destination: 6
        ),
        Story(
            index: 1,
            title: "Setelah mengambil tali, anda pergi semakin ke dalam hutan dan menemukan seekor harimau yang sedang kelaparan berjalan ke arahmu.",
            choice1: "Lempar batu",
            choice1Destination: 2,
            choice2: "Lari dan meminta pertolongan",
            choice2Destination: 12
        ),
        Story(
            index: 2,
            title: "Harimau itu tidak terpengaruh, dan semakin mendekatimu.",
            choice1: "Berteriak meminta pertolongan",
            choice1Destination: 3,
            choice2: "Menyerah dan menunggu ajal",
            choice2Destination: 3
        ),
        Story(
            index: 3,
            title: "Tiba-tiba ada seekor rubah berbadan manusia datang dan mengusir harimau itu. Setelah mengusir harimau, rubah itu bertanya \"apakah kau mau ke rumahku? keamananmu lebih terjamin di sana\"",
            choice1: "Terima tawaran rubah",
            choice1Destination: 4,
            choice2: "Tolak tawaran rubah",
            choice2Destination: 5
        ),
        Story(
            index: 4,
            title: "Rubah itu kemudian mengajak anda ke rumahnya yang terletak tak jauh dari sana. Rumahnya begitu indah dan nyaman. Rubah pun menawarkan anda minuman yang tidak mungkin anda tolak. Oh tidak ternyata minuman itu mengandung racun! Anda pun tertidur setelah meminum minuman itu dan setelah bangun anda berubah menjadi rakun dan terjebak dalam hutan itu selamanya.",
            choice1: "The",
            choice1Destination: 0,
            choice2: "End",
            choice2Destination: 0
        ),
        Story(
            index: 5,
            title: "Anda terus berjalan mengelilingi hutan berharap menemukan sesuatu malah menemukan harimau yang tadi. Karena sudah tidak ada harapan, anda pun menunggu ajal dan harimau itupun membunuh anda.",
            choice1: "The",
            choice1Destination: 0,
            choice2: "End",
            choice2Destination: 0
        ),
        Story(
            index: 6,
            title: "Setelah mengambil daging ikan, anda pergi semain ke dalam hutan dan menemukan seekor kucing yang sangat kelaparan mengeong-ngeong ke anda.",
            choice1: "Berikan daging ikan",
            choice1Destination: 7,
            choice2: "Tinggalkan saja",
            choice2Destination: 10
        ),
        Story(
            index: 7,
            title: "Anda memberikan daging ikan ke kucing itu. Kucing itu kemudian makan ikan dengan sangat lahap. Setelah makan, dengan ajaibnya dia tiba-tiba berubah menjadi manusia \"Sedang apa kau disini? disini sangat berbahaya, mari ku antar kau keluar dari sini\" kata kucing itu.",
            choice1: "Ikuti kucing",
            choice1Destination: 8,
            choice2: "Jangan ikuti kucing",
            choice2Destination: 9
        ),
        Story(
            index: 8,
            title: "Kucing itu kemudian membawamu keluar dari hutan tersebut sambil berbicara mengenai hutan ini. Ternyata, hutan itu adalah hutan yang sangat berbahaya karena dihuni oleh seorang penyihir jahat berwujud manusia rubah. Manusia yang sudah oleh penyihir itu akan diubah menjadi hewan dan tidak bisa keluar dari hutan itu. Bahkan kucing itu juga merupakan salah satu korban penyihir jahat.",
            choice1: "The",
            choice1Destination: 0,
            choice2: "End",
            choice2Destination: 0
        ),
        Story(
            index: 9,
            title: "Anda terus melanjutkan perjalanan di hutan itu hingga tidak sadar hari semakin malam dan anda juga semakin lapar. Persediaan makanan anda juga sudah habis. Tinggal menghitung hari untuk menunggu ajal anda.",
            choice1: "The",
            choice1Destination: 0,
            choice2: "End",
            choice2Destination: 0
        ),
        Story(
            index: 10,
            title: "Anda terus melanjutkan perjalanan di hutan itu sampai larut malam. Beberapa saat kemudian anda menemukan seekor harimau yang sedang kelaparan berjalan ke arahmu.",
            choice1: "Berikan makanan",
            choice1Destination: 11,
            choice2: "Lari dan minta pertolongan",
            choice2Destination: 12
        ),
        Story(
            index: 11,
            title: "Anda memberikan makanan ke harimau itu. Harimau itu kemudian makan dengan sangat lahap. Setelah makan, dengan ajaibnya dia tiba-tiba berubah menjadi manusia \"Sedang apa kau disini? disini sangat berbahaya, mari ku antar kau keluar dari sini\" kata harimau itu.",
            choice1: "Ikuti harimau",
            choice1Destination: 13,
            choice2: "Jangan ikuti harimau",
            choice2Destination: 9
        ),
        Story(
            index: 12,
            title: "Anda kemudian berlari menjauh dari harimau yang kelaparan itu. Hingga diperjalanan anda menemukan seorang rubah berbadan manusia. Rubah itu kemudian mengajak anda ke rumahnya karena katanya disana lebih aman.",
            choice1: "Ikuti rubah",
            choice1Destination: 4,
            choice2: "Jangan ikuti rubah",
            choice2Destination: 5
        ),
        Story(
            index: 13,
            title: "Harimau itu kemudian membawamu keluar dari hutan tersebut sambil berbicara mengenai hutan ini. Ternyata, hutan itu adalah hutan yang sangat berbahaya karena dihuni oleh seorang penyihir jahat berwujud manusia rubah. Manusia yang sudah oleh penyihir itu akan diubah menjadi hewan dan tidak bisa keluar dari hutan itu. Bahkan harimau itu juga merupakan salah satu korban penyihir jahat.",
            choice1: "The",
            choice1Destination: 0,
            choice2: "End",
            choice2Destination: 0
        )
        
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    func getIndex() -> Int {
        return stories[storyNumber].index
    }
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNumber]
        
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
}
