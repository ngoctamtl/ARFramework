//
//  UIColor+iOS7Colors.m
//  iOS7Colors
//
//  Created by claaslange on 23.08.13.
//
//

#define kMetroColorTurquoise    0x1abc9c
#define kMetroColorEmerald      0x2ecc71
#define kMetroColorPeterRiver   0x3498db
#define kMetroColorAmethyst     0x9b59b6
#define kMetroColorWetAsphalt   0x34495e
#define kMetroColorGreenSea     0x16a085
#define kMetroColorNephritis    0x27ae60
#define kMetroColorBelizeHole   0x2980b9
#define kMetroColorWisteria     0x8e44ad
#define kMetroColorMidnightBlue 0x2c3e50
#define kMetroColorSunFlower    0xf1c40f
#define kMetroColorCarrot       0xe67e22
#define kMetroColorAlizarin     0xe74c3c
#define kMetroColorClouds       0xecf0f1
#define kMetroColorConcrete     0x95a5a6
#define kMetroColorOrange       0xf39c12
#define kMetroColorPumpkin      0xd35400
#define kMetroColorPomegranate  0xc0392b
#define kMetroColorSilver       0xbdc3c7
#define kMetroColorAsbestos     0x7f8c8d
#define kMetroColorBlue         0x1a8796
#define kMetroColorGreen        0x4bc1d2

#import "UIColor+iOS7Colors.h"
#import <objc/message.h>

@implementation UIColor (iOS7Colors)

#pragma mark - Selector dynamically

+ (id)performClassSelector:(SEL)selector {
    
    id value = objc_msgSend(self, selector);
    
    if (!value) {
        
        return nil;
    }
    return value;
}

#pragma mark - Convert color to UIColor

+ (UIColor *)colorWithRGBHex:(UInt32)hex {
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;
    
    return [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:1];
}

+ (UIColor *)colorWithHexString:(NSString *)hexString {
    NSString *clean = [hexString stringByReplacingOccurrencesOfString:@"#"
                                                           withString:@""];
    NSScanner *scanner = [NSScanner scannerWithString:clean];
    unsigned hexNum;
    if (![scanner scanHexInt:&hexNum]) {
        return nil;
    }
    return [UIColor colorWithRGBHex:hexNum];
}

#pragma mark - Metro Colors



+ (instancetype)MetroTurquoise {
    
    return [self colorWithRGBHex:kMetroColorTurquoise];
}

+ (instancetype)MetroEmerald {
    
    return [self colorWithRGBHex:kMetroColorEmerald];
}

+ (instancetype)MetroPeterRiver {
    
    return [self colorWithRGBHex:kMetroColorPeterRiver];
}

+ (instancetype)MetroAmethyst {
    
    return [self colorWithRGBHex:kMetroColorAmethyst];
}

+ (instancetype)MetroWetAsphalt {
    
    return [self colorWithRGBHex:kMetroColorWetAsphalt];
}

+ (instancetype)MetroGreenSea {
    
    return [self colorWithRGBHex:kMetroColorGreenSea];
}

+ (instancetype)MetroNephritis {
    
    return [self colorWithRGBHex:kMetroColorNephritis];
}

+ (instancetype)MetroBelizeHole {
    
    return [self colorWithRGBHex:kMetroColorBelizeHole];
}

+ (instancetype)MetroWisteria {
    
    return [self colorWithRGBHex:kMetroColorWisteria];
}

+ (instancetype)MetroMidnightBlue {
    
    return [self colorWithRGBHex:kMetroColorMidnightBlue];
}

+ (instancetype)MetroSunFlower {
    
    return [self colorWithRGBHex:kMetroColorSunFlower];
}

+ (instancetype)MetroCarrot {
    
    return [self colorWithRGBHex:kMetroColorCarrot];
}

+ (instancetype)MetroAlizarin {
    
    return [self colorWithRGBHex:kMetroColorAlizarin];
}

+ (instancetype)MetroClouds {
    
    return [self colorWithRGBHex:kMetroColorClouds];
}

+ (instancetype)MetroOrange {
    
    return [self colorWithRGBHex:kMetroColorOrange];
}

+ (instancetype)MetroPomegranate {
    
    return [self colorWithRGBHex:kMetroColorPomegranate];
}

+ (instancetype)MetroPumpkin {
    
    return [self colorWithRGBHex:kMetroColorPumpkin];
}

+ (instancetype)MetroSilver {
    
    return [self colorWithRGBHex:kMetroColorSilver];
}

+ (instancetype)MetroAsbestos {
    
    return [self colorWithRGBHex:kMetroColorAsbestos];
}

+ (instancetype)MetroBlue {
    
    return [self colorWithRGBHex:kMetroColorBlue];
}

+ (instancetype)MetroGreen {
    
    return [self colorWithRGBHex:kMetroColorGreen];
}

+ (instancetype)MetroConcrete {
    
    return [self colorWithRGBHex:kMetroColorConcrete];
}

#pragma mark - Plain Colors

+ (instancetype)iOS7redColor;
{
    return [UIColor colorWithRed:1.0f green:0.22f blue:0.22f alpha:1.0f];
}

+ (instancetype)iOS7orangeColor;
{
    return [UIColor colorWithRed:1.0f green:0.58f blue:0.21f alpha:1.0f];
}

+ (instancetype)iOS7yellowColor;
{
    return [UIColor colorWithRed:1.0f green:0.79f blue:0.28f alpha:1.0f];
}

+ (instancetype)iOS7greenColor;
{
    return [UIColor colorWithRed:0.27f green:0.85f blue:0.46f alpha:1.0f];
}

+ (instancetype)iOS7lightBlueColor;
{
    return [UIColor colorWithRed:0.18f green:0.67f blue:0.84f alpha:1.0f];
}

+ (instancetype)iOS7darkBlueColor;
{
    return [UIColor colorWithRed:0.0f green:0.49f blue:0.96f alpha:1.0f];
}

+ (instancetype)iOS7purpleColor;
{
    return [UIColor colorWithRed:0.35f green:0.35f blue:0.81f alpha:1.0f];
}

+ (instancetype)iOS7pinkColor;
{
    return [UIColor colorWithRed:1.0f green:0.17f blue:0.34f alpha:1.0f];
}

+ (instancetype)iOS7darkGrayColor;
{
    return [UIColor colorWithRed:0.56f green:0.56f blue:0.58f alpha:1.0f];
}

+ (instancetype)iOS7lightGrayColor;
{
    return [UIColor colorWithRed:0.78f green:0.78f blue:0.8f alpha:1.0f];
}

#pragma mark - Gradient Colors

+ (instancetype)iOS7redGradientStartColor;
{
    return [UIColor colorWithRed:1.0f green:0.37f blue:0.23f alpha:1.0f];
}

+ (instancetype)iOS7redGradientEndColor;
{
    return [UIColor colorWithRed:1.0f green:0.16f blue:0.41f alpha:1.0f];
}

+ (instancetype)iOS7orangeGradientStartColor;
{
    return [UIColor colorWithRed:1.0f green:0.58f blue:0.0f alpha:1.0f];
}

+ (instancetype)iOS7orangeGradientEndColor;
{
    return [UIColor colorWithRed:1.0f green:0.37f blue:0.23f alpha:1.0f];
}

+ (instancetype)iOS7yellowGradientStartColor;
{
    return [UIColor colorWithRed:1.0f green:0.86f blue:0.3f alpha:1.0f];
}

+ (instancetype)iOS7yellowGradientEndColor;
{
    return [UIColor colorWithRed:1.0f green:0.8f blue:0.01f alpha:1.0f];
}

+ (instancetype)iOS7greenGradientStartColor;
{
    return [UIColor colorWithRed:0.53f green:0.99f blue:0.44f alpha:1.0f];
}

+ (instancetype)iOS7greenGradientEndColor;
{
    return [UIColor colorWithRed:0.04f green:0.83f blue:0.09f alpha:1.0f];
}

+ (instancetype)iOS7tealGradientStartColor;
{
    return [UIColor colorWithRed:0.32f green:0.93f blue:0.78f alpha:1.0f];
}

+ (instancetype)iOS7tealGradientEndColor;
{
    return [UIColor colorWithRed:0.35f green:0.78f blue:0.98f alpha:1.0f];
}

+ (instancetype)iOS7blueGradientStartColor;
{
    return [UIColor colorWithRed:0.10f green:0.84f blue:0.99f alpha:1.0f];
}

+ (instancetype)iOS7blueGradientEndColor;
{
    return [UIColor colorWithRed:0.11f green:0.38f blue:0.94f alpha:1.0f];
}

+ (instancetype)iOS7violetGradientStartColor;
{
    return [UIColor colorWithRed:0.78f green:0.27f blue:0.99f alpha:1.0f];
}

+ (instancetype)iOS7violetGradientEndColor;
{
    return [UIColor colorWithRed:0.35f green:0.34f blue:0.84f alpha:1.0f];
}

+ (instancetype)iOS7magentaGradientStartColor;
{
    return [UIColor colorWithRed:0.94f green:0.30f blue:0.71f alpha:1.0f];
}

+ (instancetype)iOS7magentaGradientEndColor;
{
    return [UIColor colorWithRed:0.78f green:0.26f blue:0.99f alpha:1.0f];
}

+ (instancetype)iOS7blackGradientStartColor;
{
    return [UIColor colorWithRed:0.29f green:0.29f blue:0.29f alpha:1.0f];
}

+ (instancetype)iOS7blackGradientEndColor;
{
    return [UIColor colorWithRed:0.17f green:0.17f blue:0.17f alpha:1.0f];
}

+ (instancetype)iOS7silverGradientStartColor;
{
    return [UIColor colorWithRed:0.86f green:0.87f blue:0.87f alpha:1.0f];
}

+ (instancetype)iOS7silverGradientEndColor;
{
    return [UIColor colorWithRed:0.54f green:0.55f blue:0.56f alpha:1.0f];
}

@end
