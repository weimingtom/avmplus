/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;


/*
 *
 * Date:    16 September 2002
 * SUMMARY: Testing propertyIsEnumerable() on non-existent property
 * See http://bugzilla.mozilla.org/show_bug.cgi?id=156354
 *
 */
//-----------------------------------------------------------------------------
var gTestfile = 'regress-156354.js';
var UBound = 0;
var BUGNUMBER = 156354;
var summary = 'Testing propertyIsEnumerable() on non-existent property';
var status = '';
var statusitems = [];
var actual = '';
var actualvalues = [];
var expect= '';
var expectedvalues = [];


//status = inSection(1);
actual = this.propertyIsEnumerable('XYZ');
expect = false;
addThis();

//status = inSection(2);
actual = this.propertyIsEnumerable('');
expect = false;
addThis();

//status = inSection(3);
actual = this.propertyIsEnumerable(undefined);
expect = false;
addThis();

//status = inSection(4);
actual = this.propertyIsEnumerable(null);
expect = false;
addThis();

//status = inSection(5);
actual = this.propertyIsEnumerable('\u02b1');
expect = false;
addThis();


var obj = {prop1:null};

//status = inSection(6);
actual = obj.propertyIsEnumerable('prop1');
expect = true;
addThis();

//status = inSection(7);
actual = obj.propertyIsEnumerable('prop2');
expect = false;
addThis();


//-----------------------------------------------------------------------------
addtestcases();
//-----------------------------------------------------------------------------


function addThis()
{
  statusitems[UBound] = status;
  actualvalues[UBound] = actual;
  expectedvalues[UBound] = expect;
  UBound++;
}


function addtestcases()
{

  //printBugNumber(BUGNUMBER);
//printStatus(summary);

  for (var i=0; i<UBound; i++)
  {
    Assert.expectEq(statusitems[i], expectedvalues[i], actualvalues[i]);
  }


}

