//
//  UIColor+iOS7Colors.h
//  iOS7Colors
//
//  Created by claaslange on 23.08.13.
//
//

/**
 *  Macro to change RGB to UIColor
 *
 *  @param r Red color
 *  @param g Green color
 *  @param b Blue color
 *
 *  @return UIColor
 */
#define RGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]

/**
 *  Macro to change RGB to UIColor with Alpha (Transparation)
 *
 *  @param r Red color
 *  @param g Green color
 *  @param b Blue color
 *  @param a Alpha
 *
 *  @return UIColor
 */
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

/**
 *  Macro to change WHITE/BLACK color to UIColor
 *
 *  @param w White color
 *  @param a Alpha color
 *
 *  @return UIColor
 */
#define GREY(w,a) [UIColor colorWithWhite:w alpha:a]

/**
 *  Change the HEX code to UIColor of Apple
 *
 *  @param rgbValue HEX code of Color
 *
 *  @return UIColor (id)
 */
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#import <UIKit/UIKit.h>

@interface UIColor (iOS7Colors)

+ (UIColor *)colorWithHexString:(NSString *)hexString;
+ (UIColor *)colorWithRGBHex:(UInt32)hex;

// Metro Color
+ (instancetype)MetroTurquoise;
+ (instancetype)MetroEmerald;
+ (instancetype)MetroPeterRiver;
+ (instancetype)MetroAmethyst;
+ (instancetype)MetroWetAsphalt;
+ (instancetype)MetroGreenSea;
+ (instancetype)MetroNephritis;
+ (instancetype)MetroBelizeHole;
+ (instancetype)MetroWisteria;
+ (instancetype)MetroMidnightBlue;
+ (instancetype)MetroSunFlower;
+ (instancetype)MetroCarrot;
+ (instancetype)MetroAlizarin;
+ (instancetype)MetroClouds;
+ (instancetype)MetroConcrete;
+ (instancetype)MetroOrange;
+ (instancetype)MetroPumpkin;
+ (instancetype)MetroPomegranate;
+ (instancetype)MetroSilver;
+ (instancetype)MetroAsbestos;
+ (instancetype)MetroBlue;
+ (instancetype)MetroGreen;

// Plain Colors
+ (instancetype)iOS7redColor;
+ (instancetype)iOS7orangeColor;
+ (instancetype)iOS7yellowColor;
+ (instancetype)iOS7greenColor;
+ (instancetype)iOS7lightBlueColor;
+ (instancetype)iOS7darkBlueColor;
+ (instancetype)iOS7purpleColor;
+ (instancetype)iOS7pinkColor;
+ (instancetype)iOS7darkGrayColor;
+ (instancetype)iOS7lightGrayColor;

// Gradient Colors
+ (instancetype)iOS7redGradientStartColor;
+ (instancetype)iOS7redGradientEndColor;

+ (instancetype)iOS7orangeGradientStartColor;
+ (instancetype)iOS7orangeGradientEndColor;

+ (instancetype)iOS7yellowGradientStartColor;
+ (instancetype)iOS7yellowGradientEndColor;

+ (instancetype)iOS7greenGradientStartColor;
+ (instancetype)iOS7greenGradientEndColor;

+ (instancetype)iOS7tealGradientStartColor;
+ (instancetype)iOS7tealGradientEndColor;

+ (instancetype)iOS7blueGradientStartColor;
+ (instancetype)iOS7blueGradientEndColor;

+ (instancetype)iOS7violetGradientStartColor;
+ (instancetype)iOS7violetGradientEndColor;

+ (instancetype)iOS7magentaGradientStartColor;
+ (instancetype)iOS7magentaGradientEndColor;

+ (instancetype)iOS7blackGradientStartColor;
+ (instancetype)iOS7blackGradientEndColor;

+ (instancetype)iOS7silverGradientStartColor;
+ (instancetype)iOS7silverGradientEndColor;

@end
