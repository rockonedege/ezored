// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from proj.djinni

#import "ezored/enums/EZREnumsCustomerStatusEnum.h"
#import <Foundation/Foundation.h>

@interface EZRDomainCustomer : NSObject
- (nonnull instancetype)initWithId:(int64_t)id
                              name:(nonnull NSString *)name
                             token:(nonnull NSString *)token
                            status:(EZREnumsCustomerStatusEnum)status;
+ (nonnull instancetype)customerWithId:(int64_t)id
                                  name:(nonnull NSString *)name
                                 token:(nonnull NSString *)token
                                status:(EZREnumsCustomerStatusEnum)status;

@property (nonatomic, readonly) int64_t id;

@property (nonatomic, readonly, nonnull) NSString * name;

@property (nonatomic, readonly, nonnull) NSString * token;

@property (nonatomic, readonly) EZREnumsCustomerStatusEnum status;

@end
