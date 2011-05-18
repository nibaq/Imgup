// Copyright (c) 2010-2011, Nate Stedman <natesm@gmail.com>
//
// Permission to use, copy, modify, and/or distribute this software for any
// purpose with or without fee is hereby granted, provided that the above
// copyright notice and this permission notice appear in all copies.
//
// THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
// WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
// ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
// WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
// ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
// OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

#import "IUStatusItem.h"
#import "IUDropView.h"
#import "IUAppDelegate.h"

@implementation IUStatusItem

-(id)initWithView:(IUDropView*)dropView menu:(NSMenu*)menu
{
    self = [[[NSStatusBar systemStatusBar]
             statusItemWithLength:SIZE] retain];
    
    if (self)
    {
        [self setHighlightMode:YES];
        [self setMenu:menu];
        [self setView:dropView];

        [dropView setItem:self];
    }
    
    return self;
}

@end
