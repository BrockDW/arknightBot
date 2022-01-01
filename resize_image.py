from os import walk
from os import path, makedirs
from PIL import Image
original_width = 1980
original_height = 1080
new_width  = 1280
new_height = 720

width_ratio =  new_width/ original_width
height_ratio =  new_height/ original_height
print(width_ratio, height_ratio)

# from os import walk
# for dirpath, dirnames, filenames in walk("./botImg"):
#     print(dirpath, dirnames, filenames)

if __name__ == '__main__':

    for dirpath, dirnames, filenames in walk("botImg_oldsize"):
        for filename in filenames:
            image = Image.open(dirpath + "\\" + filename)
            width, height= image.size
            # print(width, height, filename)
            isExist = path.exists("botImgSmall"  +  "\\" + dirpath)
            if not isExist:
                makedirs("botImgSmall"  +  "\\" + dirpath)
            # new_image = image.resize((int(width * width_ratio), int(height*height_ratio)))
            #
            # new_image.save("botImgSmall"  +  "\\" + dirpath + "\\" + filename)

            image.thumbnail((int(width * width_ratio), int(height * height_ratio)))

            image.save("botImgSmall" + "\\" + dirpath + "\\" + filename, quality=100, optimize=True)



            print((int(width * width_ratio), int(height * height_ratio)), image.size, filename)
            # if (filename == "home_page_jump.png"):
            #     print(width, height)
            #     print(width * width_ratio, height * height_ratio)
            #     break
            # break
        # break

            # print(dirpath, dirnames, filenames)
