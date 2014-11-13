#import <XCTest/XCTest.h>

#import <SPTDataLoader/SPTDataLoaderResponse.h>
#import <SPTDataLoader/SPTDataLoaderRequest.h>

#import "SPTDataLoaderResponse+Private.h"

@interface SPTDataLoaderResponseTest : XCTestCase

@property (nonatomic, strong) SPTDataLoaderResponse *response;

@property (nonatomic, strong) SPTDataLoaderRequest *request;
@property (nonatomic, strong) NSURLResponse *urlResponse;

@end

@implementation SPTDataLoaderResponseTest

#pragma mark XCTestCase

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.request = [SPTDataLoaderRequest requestWithURL:[NSURL URLWithString:@"https://spclient.wg.spotify.com/thingy"]];
    self.urlResponse = [NSURLResponse new];
    self.response = [SPTDataLoaderResponse dataLoaderResponseWithRequest:self.request response:self.urlResponse];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

#pragma mark SPTDataLoaderResponseTest

- (void)testNotNil
{
    XCTAssertNotNil(self.response, @"The response should not be nil");
}

@end
