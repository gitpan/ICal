/* -*- Mode: C -*-*/
/*======================================================================
  FILE: ical.i

  (C) COPYRIGHT 1999 Eric Busboom 
  http://www.softwarestudio.org

  The contents of this file are subject to the Mozilla Public License
  Version 1.0 (the "License"); you may not use this file except in
  compliance with the License. You may obtain a copy of the License at
  http://www.mozilla.org/MPL/
 
  Software distributed under the License is distributed on an "AS IS"
  basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
  the License for the specific language governing rights and
  limitations under the License.

  The original author is Eric Busboom
  The original code is icalenums.h

  Contributions from:
  Graham Davison (g.m.davison@computer.org)

  ======================================================================*/
%module ICal

%{
#include "ical.h"
#include "icalerror.h"

#include <sys/types.h> /* for size_t */
#include <time.h>

    %}


/*======================================================================
 FILE: icalenums.h
======================================================================*/

/***********************************************************************
 * Component enumerations
**********************************************************************/

typedef enum icalcomponent_kind {
    ICAL_NO_COMPONENT,
    ICAL_ANY_COMPONENT,	/* Used in get_components to select all components*/
    ICAL_XROOT_COMPONENT, /* Root component returned by parser */
    ICAL_XATTACH_COMPONENT, /* MIME attached data, returned by parser. */
    ICAL_VEVENT_COMPONENT,
    ICAL_VTODO_COMPONENT,
    ICAL_VJOURNAL_COMPONENT,
    ICAL_VCALENDAR_COMPONENT,
    ICAL_VFREEBUSY_COMPONENT,
    ICAL_VTIMEZONE_COMPONENT,
    ICAL_VALARM_COMPONENT,
    ICAL_XSTANDARD_COMPONENT,
    ICAL_XDAYLIGHT_COMPONENT,
    ICAL_X_COMPONENT,
    ICAL_VSCHEDULE_COMPONENT,
} icalcomponent_kind;

/***********************************************************************
 * Property Enumerations
**********************************************************************/

typedef enum icalproperty_kind {
    ICAL_NO_PROPERTY,
    ICAL_ANY_PROPERTY,
    ICAL_CALSCALE_PROPERTY,
    ICAL_METHOD_PROPERTY,
    ICAL_PRODID_PROPERTY,
    ICAL_VERSION_PROPERTY,
    ICAL_ATTACH_PROPERTY,
    ICAL_CATEGORIES_PROPERTY,
    ICAL_CLASS_PROPERTY,
    ICAL_COMMENT_PROPERTY,
    ICAL_DESCRIPTION_PROPERTY,
    ICAL_GEO_PROPERTY,
    ICAL_LOCATION_PROPERTY,
    ICAL_PERCENTCOMPLETE_PROPERTY,
    ICAL_PRIORITY_PROPERTY,
    ICAL_RESOURCES_PROPERTY,
    ICAL_STATUS_PROPERTY,
    ICAL_SUMMARY_PROPERTY,
    ICAL_COMPLETED_PROPERTY,
    ICAL_DTEND_PROPERTY,
    ICAL_DUE_PROPERTY,
    ICAL_DTSTART_PROPERTY,
    ICAL_DURATION_PROPERTY,
    ICAL_FREEBUSY_PROPERTY,
    ICAL_TRANSP_PROPERTY,
    ICAL_TZID_PROPERTY,
    ICAL_TZNAME_PROPERTY,
    ICAL_TZOFFSETFROM_PROPERTY,
    ICAL_TZOFFSETTO_PROPERTY,
    ICAL_TZURL_PROPERTY,
    ICAL_ATTENDEE_PROPERTY,
    ICAL_CONTACT_PROPERTY,
    ICAL_ORGANIZER_PROPERTY,
    ICAL_RECURRENCEID_PROPERTY,
    ICAL_RELATEDTO_PROPERTY,
    ICAL_URL_PROPERTY,
    ICAL_UID_PROPERTY,
    ICAL_EXDATE_PROPERTY,
    ICAL_EXRULE_PROPERTY,
    ICAL_RDATE_PROPERTY,
    ICAL_RRULE_PROPERTY,
    ICAL_ACTION_PROPERTY,
    ICAL_REPEAT_PROPERTY,
    ICAL_TRIGGER_PROPERTY,
    ICAL_CREATED_PROPERTY,
    ICAL_DTSTAMP_PROPERTY,
    ICAL_LASTMODIFIED_PROPERTY,
    ICAL_SEQUENCE_PROPERTY,
    ICAL_REQUESTSTATUS_PROPERTY,
    ICAL_X_PROPERTY
} icalproperty_kind;

/***********************************************************************
 * Enumerations for the values of properties
 ***********************************************************************/

typedef enum icalproperty_method {
    ICAL_METHOD_PUBLISH,
    ICAL_METHOD_REQUEST,
    ICAL_METHOD_REPLY,
    ICAL_METHOD_ADD,
    ICAL_METHOD_CANCEL,
    ICAL_METHOD_REFRESH,
    ICAL_METHOD_COUNTER,
    ICAL_METHOD_DECLINECOUNTER
} icalproperty_method ;

typedef enum icalproperty_transp {
    ICAL_TRANSP_OPAQUE,
    ICAL_TRANS_TRANSPARENT
}  icalproperty_trans;

typedef enum icalproperty_calscale {
    ICAL_CALSCALE_GREGORIAN
} icalproperty_calscale ;


typedef enum icalproperty_class {
    ICAL_CLASS_PUBLIC,
    ICAL_CLASS_PRIVATE,
    ICAL_CLASS_CONFIDENTIAL,
    ICAL_CLASS_XNAME
} icalproperty_class;


typedef enum icalproperty_status {
    ICAL_STATUS_TENTATIVE,
    ICAL_STATUS_CONFIRMED,
    ICAL_STATUS_CANCELLED, /* CANCELED? SIC */
    ICAL_STATUS_NEEDSACTION,
    ICAL_STATUS_COMPLETED,
    ICAL_STATUS_INPROCESS,
    ICAL_STATUS_DRAFT,
    ICAL_STATUS_FINAL
}  icalproperty_status;

typedef enum icalproperty_action {
    ICAL_ACTION_AUDIO,
    ICAL_ACTION_DISPLAY,
    ICAL_ACTION_EMAIL,
    ICAL_ACTION_PROCEDURE,
    ICAL_ACTION_XNAME
} icalproperty_action;


/***********************************************************************
 * Value enumerations
**********************************************************************/

typedef enum icalvalue_kind {
    ICAL_NO_VALUE,
    ICAL_ATTACH_VALUE, /* Non-Standard*/
    ICAL_BINARY_VALUE,
    ICAL_BOOLEAN_VALUE,
    ICAL_CALADDRESS_VALUE,
    ICAL_DATE_VALUE,
    ICAL_DATETIME_VALUE,
    ICAL_DATETIMEDATE_VALUE, /* Non-Standard */
    ICAL_DATETIMEPERIOD_VALUE, /* Non-Standard */
    ICAL_DURATION_VALUE,
    ICAL_FLOAT_VALUE,
    ICAL_GEO_VALUE, /* Non-Standard */
    ICAL_INTEGER_VALUE,
    ICAL_PERIOD_VALUE,
    ICAL_RECUR_VALUE,
    ICAL_TEXT_VALUE,
    ICAL_TIME_VALUE,
    ICAL_TRIGGER_VALUE, /* Non-Standard */
    ICAL_URI_VALUE,
    ICAL_UTCOFFSET_VALUE,
    ICAL_XNAME_VALUE
} icalvalue_kind;


/***********************************************************************
 * Parameter Enumerations
 **********************************************************************/


typedef enum icalparameter_kind {
    ICAL_NO_PARAMETER,
    ICAL_ANY_PARAMETER,
    ICAL_ALTREP_PARAMETER, /* DQUOTE uri DQUOTE */
    ICAL_CN_PARAMETER, /* text */
    ICAL_CUTYPE_PARAMETER, /*INDIVIDUAL, GROUP, RESOURCE,ROOM,UNKNOWN, x-name*/
    ICAL_DELEGATEDFROM_PARAMETER, /* *("," DQUOTE cal-address DQUOTE) */
    ICAL_DELEGATEDTO_PARAMETER, /*  *("," DQUOTE cal-address DQUOTE) */
    ICAL_DIR_PARAMETER, /*  DQUOTE uri DQUOTE */
    ICAL_ENCODING_PARAMETER, /* *BIT, BASE64, x-name */
    ICAL_FMTTYPE_PARAMETER, /* registered MINE content type */
    ICAL_FBTYPE_PARAMETER, /* FREE, BUSY, BUSY-UNAVAILABLE, BUSY-TENTATIVE,x-name */
    ICAL_LANGUAGE_PARAMETER, /* text from RFC 1766 */
    ICAL_MEMBER_PARAMETER, /*  DQUOTE cal-address DQUOTE */
    ICAL_PARTSTAT_PARAMETER, /* NEEDS-ACTION, ACCEPTED, DECLINED, TENTATIVE, DELEGATED, x-name */
    ICAL_RANGE_PARAMETER, /* THISANDPRIOR, THISANDFUTURE */
    ICAL_RELATED_PARAMETER, /* START, END */
    ICAL_RELTYPE_PARAMETER, /* PARENT, CHILD, SIBLING,x-name */
    ICAL_ROLE_PARAMETER, /* CHAIR, REQ_PARTICIPANT, OPT_PARTICIPANT, NON_PARTICIPANT, x-name */
    ICAL_RSVP_PARAMETER, /* TRUE. FALSE */
    ICAL_SENTBY_PARAMETER, /*  DQUOTE uri DQUOTE */
    ICAL_TZID_PARAMETER, /*  [tzidprefix] paramtext CRLF */
    ICAL_VALUE_PARAMETER, /* BINARY, BOOLEAN, CAL_ADDRESS, DATE, DATE-TIME, DURATION, FLOAT, INTEGER, PERIOD, RECUR, TEXT, TIME, UTC_OFFSET, x-name */
    ICAL_X_PARAMETER /* text */ 
} icalparameter_kind;

typedef enum icalparameter_cutype {
    ICAL_CUTYPE_INDIVIDUAL, 
    ICAL_CUTYPE_GROUP, 
    ICAL_CUTYPE_RESOURCE, 
    ICAL_CUTYPE_ROOM,
    ICAL_CUTYPE_UNKNOWN,
    ICAL_CUTYPE_XNAME
} icalparameter_cutype;


typedef enum icalparameter_encoding {
    ICAL_ENCODING_8BIT, 
    ICAL_ENCODING_BASE64,
    ICAL_ENCODING_XNAME
} icalparameter_encoding;

typedef enum icalparameter_fbtype {
    ICAL_FBTYPE_FREE, 
    ICAL_FBTYPE_BUSY, 
    ICAL_FBTYPE_BUSYUNAVAILABLE, 
    ICAL_FBTYPE_BUSYTENTATIVE,
    ICAL_FBTYPE_XNAME
} icalparameter_fbtype;

typedef enum icalparameter_partstat {
    ICAL_PARTSTAT_NEEDSACTION, 
    ICAL_PARTSTAT_ACCEPTED, 
    ICAL_PARTSTAT_DECLINED, 
    ICAL_PARTSTAT_TENTATIVE, 
    ICAL_PARTSTAT_DELEGATED,
    ICAL_PARTSTAT_COMPLETED,
    ICAL_PARTSTAT_INPROCESS,
    ICAL_PARTSTAT_XNAME
} icalparameter_partstat;

typedef enum icalparameter_range {
    ICAL_RANGE_THISANDPRIOR, 
    ICAL_RANGE_THISANDFUTURE
} icalparameter_range;

typedef enum icalparameter_related {
    ICAL_RELATED_START, 
    ICAL_RELATED_END
} icalparameter_related;

typedef enum icalparameter_reltype {
    ICAL_RELTYPE_PARENT, 
    ICAL_RELTYPE_CHILD,
    ICAL_RELTYPE_SIBLING,
    ICAL_RELTYPE_XNAME
} icalparameter_reltype;

typedef enum icalparameter_role {
    ICAL_ROLE_CHAIR, 
    ICAL_ROLE_REQPARTICIPANT, 
    ICAL_ROLE_OPTPARTICIPANT, 
    ICAL_ROLE_NONPARTICIPANT,
    ICAL_ROLE_XNAME
} icalparameter_role;

typedef enum icalparameter_value {
    ICAL_VALUE_XNAME = ICAL_XNAME_VALUE,
    ICAL_VALUE_BINARY = ICAL_BINARY_VALUE, 
    ICAL_VALUE_BOOLEAN = ICAL_BOOLEAN_VALUE, 
    ICAL_VALUE_CALADDRESS = ICAL_CALADDRESS_VALUE, 
    ICAL_VALUE_DATE = ICAL_DATE_VALUE, 
    ICAL_VALUE_DATETIME = ICAL_DATETIME_VALUE, 
    ICAL_VALUE_DURATION = ICAL_DURATION_VALUE, 
    ICAL_VALUE_FLOAT = ICAL_FLOAT_VALUE, 
    ICAL_VALUE_INTEGER = ICAL_INTEGER_VALUE, 
    ICAL_VALUE_PERIOD = ICAL_PERIOD_VALUE, 
    ICAL_VALUE_RECUR = ICAL_RECUR_VALUE, 
    ICAL_VALUE_TEXT = ICAL_TEXT_VALUE, 
    ICAL_VALUE_TIME = ICAL_TIME_VALUE, 
    ICAL_VALUE_UTCOFFSET = ICAL_UTCOFFSET_VALUE,
    ICAL_VALUE_URI = ICAL_URI_VALUE,
} icalparameter_value;



/***********************************************************************
 * Conversion functions
**********************************************************************/

char* icalenum_property_kind_to_string(icalproperty_kind kind);
icalproperty_kind icalenum_string_to_property_kind(char* string);

char* icalenum_value_kind_to_string(icalvalue_kind kind);
icalvalue_kind icalenum_value_kind_by_prop(icalproperty_kind kind);

char* icalenum_parameter_kind_to_string(icalparameter_kind kind);
icalparameter_kind icalenum_string_to_parameter_kind(char* string);

char* icalenum_component_kind_to_string(icalcomponent_kind kind);
icalcomponent_kind icalenum_string_to_component_kind(char* string);

icalvalue_kind icalenum_property_kind_to_value_kind(icalproperty_kind kind);

/*======================================================================
 FILE: icalmemory.h
======================================================================*/


/* Tmp buffers are managed by ical. References can be returned to the caller, although the caller will not own the memory. */

void* icalmemory_tmp_buffer(size_t size);
char* icalmemory_tmp_copy(char* str);

/* Add an externally allocated buffer to the ring. */
void  icalmemory_add_tmp_buffer(void*);


/* Free all memory used in the ring */
void icalmemory_free_ring();

/* Non-tmp buffers must be freed. These are mostly wrappers around
 * malloc, etc, but are used so the caller can change the memory
 * allocators in a future version of the library */

void* icalmemory_new_buffer(size_t size);
void* icalmemory_resize_buffer(void* buf, size_t size);
void icalmemory_free_buffer(void* buf);

/* icalmemory_append_string will copy the string 'string' to the
   buffer 'buf' starting at position 'pos', reallocing 'buf' if it is
   too small. 'buf_size' is the size of 'buf' and will be changed if
   'buf' is reallocated. 'pos' will point to the last byte of the new
   string in 'buf', usually a '\0' */

/* THESE ROUTINES CAN NOT BE USED ON TMP BUFFERS. Only use them on
   normally allocated memory, or on buffers created from
   icalmemory_new_buffer, never with buffers created by
   icalmemory_tmp_buffer. If icalmemory_append_string has to resize a
   buffer on the ring, the ring will loose track of it an you will
   have memory problems. */

void icalmemory_append_string(char** buf, char** pos, size_t* buf_size, 
			      char* string);

/*  icalmemory_append_char is similar, but is appends a character instead of a string */
void icalmemory_append_char(char** buf, char** pos, size_t* buf_size, 
			    char ch);

/*======================================================================
 FILE: icaltypes.h
======================================================================*/


/* This type type should probably be an opaque type... */
struct icalattachtype
{
	void* binary;
	int owns_binary; 

	char* base64;
	int owns_base64;

	char* url;

	int refcount; 

};

/* converts base64 to binary, fetches url and stores as binary, or
   just returns data */

struct icalattachtype* icalattachtype_new();
void  icalattachtype_add_reference(struct icalattachtype* v);
void icalattachtype_free(struct icalattachtype* v);

void icalattachtype_set_url(struct icalattachtype* v, char* url);
char* icalattachtype_get_url(struct icalattachtype* v);

void icalattachtype_set_base64(struct icalattachtype* v, char* base64,
			       int owns);
char* icalattachtype_get_base64(struct icalattachtype* v);

void icalattachtype_set_binary(struct icalattachtype* v, char* binary,
			       int owns);
void* icalattachtype_get_binary(struct icalattachtype* v);

struct icalgeotype 
{
	float lat;
	float lon;
};

struct icaltimetype
{
	int year;
	int month;
	int day;
	int hour;
	int minute;
	int second;

	int is_utc; /* 1-> time is in UTC timezone */

	int is_date; /* 1 -> interpret this as date. */
};	

struct icaltimetype icaltimetype_from_timet(time_t v, int is_date);

/* See RFC 2445 Section 4.3.10, RECUR Value, for an explaination of
   the values and fields in struct icalrecurrencetype */

typedef enum icalrecurrencetype_frequency
{
    ICAL_SECONDLY_RECURRANCE,
    ICAL_MINUTELY_RECURRANCE,
    ICAL_HOURLY_RECURRANCE,
    ICAL_DAILY_RECURRANCE,
    ICAL_WEEKLY_RECURRANCE,
    ICAL_MONTHLY_RECURRANCE,
    ICAL_YEARLY_RECURRANCE

} icalrecurrencetype_frequency;

struct icalrecurrencetype 
{
	icalrecurrencetype_frequency freq;

	/* until and count are mutually exclusive. */
       	time_t until;
	int count;

	short interval;
	
	/* The BY* parameters can each take a list of values. Here I
	 * assume that the list of values will not be larger than the
	 * range of the value -- that is, the client will not name a
	 * value more than once. 
	 
	 * Each of the lists is terminated with the value SHRT_MAX
	 * unless the the list is full. */

	short by_second[60];
	short by_minute[60];
	short by_hour[24];
	short by_day[7];
	short by_month_day[31];
	short by_year_day[366];
	short by_week_no[53];
	short by_month[12];
	short by_set_pos[366];
};


struct icaldurationtype
{
	unsigned int days;
	unsigned int weeks;
	unsigned int hours;
	unsigned int minutes;
	unsigned int seconds;
};

struct icaldurationtype icaldurationtype_from_timet(time_t t);
time_t icaldurationtype_as_timet(struct icaldurationtype);

/* Return the next occurance of 'r' after the time specified by 'after' */
struct icaltimetype icalrecurrencetype_next_occurance(
    struct icalrecurrencetype *r,
    struct icaltimetype *after);


struct icalperiodtype 
{
	struct icaltimetype start; /* Must be absolute */	
	struct icaltimetype end; /* Must be relative to start */
	struct icaldurationtype duration;
};



time_t icalperiodtype_duration(struct icalperiodtype period);
time_t icalperiodtype_end(struct icalperiodtype period);



/*======================================================================
  FILE: icalvalue.h
======================================================================*/

typedef void icalvalue;

icalvalue* icalvalue_new(icalvalue_kind kind);

icalvalue* icalvalue_new_clone(icalvalue* value);

icalvalue* icalvalue_new_from_string(icalvalue_kind kind, char* str);

void icalvalue_free(icalvalue* value);

int icalvalue_is_valid(icalvalue* value);

char* icalvalue_as_ical_string(icalvalue* value);

icalvalue_kind icalvalue_isa(icalvalue* value);

int icalvalue_isa_value(void*);


/* ATTACH # Non-std */
icalvalue* icalvalue_new_attach(struct icalattachtype v);
struct icalattachtype icalvalue_get_attach(icalvalue* value);
void icalvalue_set_attach(icalvalue* value, struct icalattachtype v);

/* BINARY  */
icalvalue* icalvalue_new_binary(char* v);
char* icalvalue_get_binary(icalvalue* value);
void icalvalue_set_binary(icalvalue* value, char* v);

/* BOOLEAN  */
icalvalue* icalvalue_new_boolean(int v);
int icalvalue_get_boolean(icalvalue* value);
void icalvalue_set_boolean(icalvalue* value, int v);

/* CAL-ADDRESS  */
icalvalue* icalvalue_new_caladdress(char* v);
char* icalvalue_get_caladdress(icalvalue* value);
void icalvalue_set_caladdress(icalvalue* value, char* v);

/* DATE  */
icalvalue* icalvalue_new_date(struct icaltimetype v);
struct icaltimetype icalvalue_get_date(icalvalue* value);
void icalvalue_set_date(icalvalue* value, struct icaltimetype v);

/* DATE-TIME  */
icalvalue* icalvalue_new_datetime(struct icaltimetype v);
struct icaltimetype icalvalue_get_datetime(icalvalue* value);
void icalvalue_set_datetime(icalvalue* value, struct icaltimetype v);

/* DATE-TIME-DATE # Non-std */
icalvalue* icalvalue_new_datetimedate(struct icaltimetype v);
struct icaltimetype icalvalue_get_datetimedate(icalvalue* value);
void icalvalue_set_datetimedate(icalvalue* value, struct icaltimetype v);

/* DATE-TIME-PERIOD # Non-std */
icalvalue* icalvalue_new_datetimeperiod(struct icalperiodtype v);
struct icalperiodtype icalvalue_get_datetimeperiod(icalvalue* value);
void icalvalue_set_datetimeperiod(icalvalue* value, struct icalperiodtype v);

/* DURATION  */
icalvalue* icalvalue_new_duration(struct icaldurationtype v);
struct icaldurationtype icalvalue_get_duration(icalvalue* value);
void icalvalue_set_duration(icalvalue* value, struct icaldurationtype v);

/* FLOAT  */
icalvalue* icalvalue_new_float(float v);
float icalvalue_get_float(icalvalue* value);
void icalvalue_set_float(icalvalue* value, float v);

/* GEO # Non-std */
icalvalue* icalvalue_new_geo(struct icalgeotype v);
struct icalgeotype icalvalue_get_geo(icalvalue* value);
void icalvalue_set_geo(icalvalue* value, struct icalgeotype v);

/* INTEGER  */
icalvalue* icalvalue_new_integer(int v);
int icalvalue_get_integer(icalvalue* value);
void icalvalue_set_integer(icalvalue* value, int v);

/* PERIOD  */
icalvalue* icalvalue_new_period(struct icalperiodtype v);
struct icalperiodtype icalvalue_get_period(icalvalue* value);
void icalvalue_set_period(icalvalue* value, struct icalperiodtype v);

/* RECUR  */
icalvalue* icalvalue_new_recur(struct icalrecurrencetype v);
struct icalrecurrencetype icalvalue_get_recur(icalvalue* value);
void icalvalue_set_recur(icalvalue* value, struct icalrecurrencetype v);

/* TEXT  */
icalvalue* icalvalue_new_text(char* v);
char* icalvalue_get_text(icalvalue* value);
void icalvalue_set_text(icalvalue* value, char* v);

/* TIME  */
icalvalue* icalvalue_new_time(struct icaltimetype v);
struct icaltimetype icalvalue_get_time(icalvalue* value);
void icalvalue_set_time(icalvalue* value, struct icaltimetype v);

/* TRIGGER # Non-std */
icalvalue* icalvalue_new_trigger(struct icaltimetype v);
struct icaltimetype icalvalue_get_trigger(icalvalue* value);
void icalvalue_set_trigger(icalvalue* value, struct icaltimetype v);

/* URI  */
icalvalue* icalvalue_new_uri(char* v);
char* icalvalue_get_uri(icalvalue* value);
void icalvalue_set_uri(icalvalue* value, char* v);

/* UTC-OFFSET  */
icalvalue* icalvalue_new_utcoffset(int v);
int icalvalue_get_utcoffset(icalvalue* value);
void icalvalue_set_utcoffset(icalvalue* value, int v);


/*======================================================================
  FILE: icalparam.h
  ======================================================================*/

typedef void icalparameter;

icalparameter* icalparameter_new(icalparameter_kind kind);
icalparameter* icalparameter_new_clone(icalparameter* p);
icalparameter* icalparameter_new_from_string(icalparameter_kind kind, char* value);

void icalparameter_free(icalparameter* parameter);

char* icalparameter_as_ical_string(icalparameter* parameter);

int icalparameter_is_valid(icalparameter* parameter);

icalparameter_kind icalparameter_isa(icalparameter* parameter);

int icalparameter_isa_parameter(void* param);

/* Acess the name of an X parameer */
void icalparameter_set_xname (icalparameter* param, char* v);
char* icalparameter_get_xname(icalparameter* param);
void icalparameter_set_xvalue (icalparameter* param, char* v);
char* icalparameter_get_xvalue(icalparameter* param);


    /* ALTREP */
icalparameter* icalparameter_new_altrep(char* v);
char* icalparameter_get_altrep(icalparameter* value);
void icalparameter_set_altrep(icalparameter* value, char* v);

/* CN */
icalparameter* icalparameter_new_cn(char* v);
char* icalparameter_get_cn(icalparameter* value);
void icalparameter_set_cn(icalparameter* value, char* v);

/* CUTYPE */
icalparameter* icalparameter_new_cutype(icalparameter_cutype v);
icalparameter_cutype icalparameter_get_cutype(icalparameter* value);
void icalparameter_set_cutype(icalparameter* value, icalparameter_cutype v);

/* DELEGATED-FROM */
icalparameter* icalparameter_new_delegatedfrom(char* v);
char* icalparameter_get_delegatedfrom(icalparameter* value);
void icalparameter_set_delegatedfrom(icalparameter* value, char* v);

/* DELEGATED-TO */
icalparameter* icalparameter_new_delegatedto(char* v);
char* icalparameter_get_delegatedto(icalparameter* value);
void icalparameter_set_delegatedto(icalparameter* value, char* v);

/* DIR */
icalparameter* icalparameter_new_dir(char* v);
char* icalparameter_get_dir(icalparameter* value);
void icalparameter_set_dir(icalparameter* value, char* v);

/* ENCODING */
icalparameter* icalparameter_new_encoding(icalparameter_encoding v);
icalparameter_encoding icalparameter_get_encoding(icalparameter* value);
void icalparameter_set_encoding(icalparameter* value, icalparameter_encoding v);

/* FBTYPE */
icalparameter* icalparameter_new_fbtype(icalparameter_fbtype v);
icalparameter_fbtype icalparameter_get_fbtype(icalparameter* value);
void icalparameter_set_fbtype(icalparameter* value, icalparameter_fbtype v);

/* FMTTYPE */
icalparameter* icalparameter_new_fmttype(char* v);
char* icalparameter_get_fmttype(icalparameter* value);
void icalparameter_set_fmttype(icalparameter* value, char* v);

/* LANGUAGE */
icalparameter* icalparameter_new_language(char* v);
char* icalparameter_get_language(icalparameter* value);
void icalparameter_set_language(icalparameter* value, char* v);

/* MEMBER */
icalparameter* icalparameter_new_member(char* v);
char* icalparameter_get_member(icalparameter* value);
void icalparameter_set_member(icalparameter* value, char* v);

/* PARTSTAT */
icalparameter* icalparameter_new_partstat(icalparameter_partstat v);
icalparameter_partstat icalparameter_get_partstat(icalparameter* value);
void icalparameter_set_partstat(icalparameter* value, icalparameter_partstat v);

/* RANGE */
icalparameter* icalparameter_new_range(icalparameter_range v);
icalparameter_range icalparameter_get_range(icalparameter* value);
void icalparameter_set_range(icalparameter* value, icalparameter_range v);

/* RELATED */
icalparameter* icalparameter_new_related(icalparameter_related v);
icalparameter_related icalparameter_get_related(icalparameter* value);
void icalparameter_set_related(icalparameter* value, icalparameter_related v);

/* RELTYPE */
icalparameter* icalparameter_new_reltype(icalparameter_reltype v);
icalparameter_reltype icalparameter_get_reltype(icalparameter* value);
void icalparameter_set_reltype(icalparameter* value, icalparameter_reltype v);

/* ROLE */
icalparameter* icalparameter_new_role(icalparameter_role v);
icalparameter_role icalparameter_get_role(icalparameter* value);
void icalparameter_set_role(icalparameter* value, icalparameter_role v);

/* RSVP */
icalparameter* icalparameter_new_rsvp(int v);
int icalparameter_get_rsvp(icalparameter* value);
void icalparameter_set_rsvp(icalparameter* value, int v);

/* SENT-BY */
icalparameter* icalparameter_new_sentby(char* v);
char* icalparameter_get_sentby(icalparameter* value);
void icalparameter_set_sentby(icalparameter* value, char* v);

/* TZID */
icalparameter* icalparameter_new_tzid(char* v);
char* icalparameter_get_tzid(icalparameter* value);
void icalparameter_set_tzid(icalparameter* value, char* v);

/* VALUE */
icalparameter* icalparameter_new_value(icalparameter_value v);
icalparameter_value icalparameter_get_value(icalparameter* value);
void icalparameter_set_value(icalparameter* value, icalparameter_value v);

/* X */
icalparameter* icalparameter_new_x(char* v);
char* icalparameter_get_x(icalparameter* value);
void icalparameter_set_x(icalparameter* value, char* v);




/*======================================================================
  FILE: icalproperty.h
======================================================================*/

typedef void icalproperty;

icalproperty* icalproperty_new(icalproperty_kind kind);

icalproperty* icalproperty_new_clone(icalproperty * prop);

icalproperty* icalproperty_new_from_string(char* str);

char* icalproperty_as_ical_string(icalproperty* prop);

void  icalproperty_free(icalproperty* prop);

icalproperty_kind icalproperty_isa(icalproperty* property);
int icalproperty_isa_property(void* property);

void icalproperty_add_parameter(icalproperty* prop,icalparameter* parameter);

void icalproperty_remove_parameter(icalproperty* prop,
				   icalparameter_kind kind);

int icalproperty_count_parameters(icalproperty* prop);

/* Iterate through the parameters */
icalparameter* icalproperty_get_first_parameter(icalproperty* prop,
						icalparameter_kind kind);
icalparameter* icalproperty_get_next_parameter(icalproperty* prop,
					       icalparameter_kind kind);


/* Access the value of the property */
void icalproperty_set_value(icalproperty* prop, icalvalue* value);

icalvalue* icalproperty_get_value(icalproperty* prop);


/* METHOD */
icalproperty* icalproperty_new_method(char* v);
void icalproperty_set_method(icalproperty* prop, char* v);
char* icalproperty_get_method(icalproperty* prop);

/* LAST-MODIFIED */
icalproperty* icalproperty_new_lastmodified(struct icaltimetype v);
void icalproperty_set_lastmodified(icalproperty* prop, struct icaltimetype v);
struct icaltimetype icalproperty_get_lastmodified(icalproperty* prop);

/* UID */
icalproperty* icalproperty_new_uid(char* v);
void icalproperty_set_uid(icalproperty* prop, char* v);
char* icalproperty_get_uid(icalproperty* prop);

/* PRODID */
icalproperty* icalproperty_new_prodid(char* v);
void icalproperty_set_prodid(icalproperty* prop, char* v);
char* icalproperty_get_prodid(icalproperty* prop);

/* STATUS */
icalproperty* icalproperty_new_status(char* v);
void icalproperty_set_status(icalproperty* prop, char* v);
char* icalproperty_get_status(icalproperty* prop);

/* DESCRIPTION */
icalproperty* icalproperty_new_description(char* v);
void icalproperty_set_description(icalproperty* prop, char* v);
char* icalproperty_get_description(icalproperty* prop);

/* CATEGORIES */
icalproperty* icalproperty_new_categories(char* v);
void icalproperty_set_categories(icalproperty* prop, char* v);
char* icalproperty_get_categories(icalproperty* prop);

/* VERSION */
icalproperty* icalproperty_new_version(char* v);
void icalproperty_set_version(icalproperty* prop, char* v);
char* icalproperty_get_version(icalproperty* prop);

/* TZOFFSETFROM */
icalproperty* icalproperty_new_tzoffsetfrom(int v);
void icalproperty_set_tzoffsetfrom(icalproperty* prop, int v);
int icalproperty_get_tzoffsetfrom(icalproperty* prop);

/* RRULE */
icalproperty* icalproperty_new_rrule(struct icalrecurrencetype v);
void icalproperty_set_rrule(icalproperty* prop, struct icalrecurrencetype v);
struct icalrecurrencetype icalproperty_get_rrule(icalproperty* prop);

/* ATTENDEE */
icalproperty* icalproperty_new_attendee(char* v);
void icalproperty_set_attendee(icalproperty* prop, char* v);
char* icalproperty_get_attendee(icalproperty* prop);

/* CONTACT */
icalproperty* icalproperty_new_contact(char* v);
void icalproperty_set_contact(icalproperty* prop, char* v);
char* icalproperty_get_contact(icalproperty* prop);

/* RELATED-TO */
icalproperty* icalproperty_new_relatedto(char* v);
void icalproperty_set_relatedto(icalproperty* prop, char* v);
char* icalproperty_get_relatedto(icalproperty* prop);

/* ORGANIZER */
icalproperty* icalproperty_new_organizer(char* v);
void icalproperty_set_organizer(icalproperty* prop, char* v);
char* icalproperty_get_organizer(icalproperty* prop);

/* COMMENT */
icalproperty* icalproperty_new_comment(char* v);
void icalproperty_set_comment(icalproperty* prop, char* v);
char* icalproperty_get_comment(icalproperty* prop);

/* TRIGGER */
icalproperty* icalproperty_new_trigger(struct icaltimetype v);
void icalproperty_set_trigger(icalproperty* prop, struct icaltimetype v);
struct icaltimetype icalproperty_get_trigger(icalproperty* prop);

/* CLASS */
icalproperty* icalproperty_new_class(char* v);
void icalproperty_set_class(icalproperty* prop, char* v);
char* icalproperty_get_class(icalproperty* prop);

/* X */
icalproperty* icalproperty_new_x(char* name, char* v);
void icalproperty_set_x_name(icalproperty* prop, char* name);
char* icalproperty_get_x_name(icalproperty* prop);
void icalproperty_set_x(icalproperty* prop, char* v);
char* icalproperty_get_x(icalproperty* prop);

/* TZOFFSETTO */
icalproperty* icalproperty_new_tzoffsetto(int v);
void icalproperty_set_tzoffsetto(icalproperty* prop, int v);
int icalproperty_get_tzoffsetto(icalproperty* prop);

/* TRANSP */
icalproperty* icalproperty_new_transp(char* v);
void icalproperty_set_transp(icalproperty* prop, char* v);
char* icalproperty_get_transp(icalproperty* prop);

/* SEQUENCE */
icalproperty* icalproperty_new_sequence(int v);
void icalproperty_set_sequence(icalproperty* prop, int v);
int icalproperty_get_sequence(icalproperty* prop);

/* LOCATION */
icalproperty* icalproperty_new_location(char* v);
void icalproperty_set_location(icalproperty* prop, char* v);
char* icalproperty_get_location(icalproperty* prop);

/* REQUEST-STATUS */
icalproperty* icalproperty_new_requeststatus(char* v);
void icalproperty_set_requeststatus(icalproperty* prop, char* v);
char* icalproperty_get_requeststatus(icalproperty* prop);

/* EXDATE */
icalproperty* icalproperty_new_exdate(struct icaltimetype v);
void icalproperty_set_exdate(icalproperty* prop, struct icaltimetype v);
struct icaltimetype icalproperty_get_exdate(icalproperty* prop);

/* TZID */
icalproperty* icalproperty_new_tzid(char* v);
void icalproperty_set_tzid(icalproperty* prop, char* v);
char* icalproperty_get_tzid(icalproperty* prop);

/* RESOURCES */
icalproperty* icalproperty_new_resources(char* v);
void icalproperty_set_resources(icalproperty* prop, char* v);
char* icalproperty_get_resources(icalproperty* prop);

/* TZURL */
icalproperty* icalproperty_new_tzurl(char* v);
void icalproperty_set_tzurl(icalproperty* prop, char* v);
char* icalproperty_get_tzurl(icalproperty* prop);

/* REPEAT */
icalproperty* icalproperty_new_repeat(int v);
void icalproperty_set_repeat(icalproperty* prop, int v);
int icalproperty_get_repeat(icalproperty* prop);

/* PRIORITY */
icalproperty* icalproperty_new_priority(int v);
void icalproperty_set_priority(icalproperty* prop, int v);
int icalproperty_get_priority(icalproperty* prop);

/* FREEBUSY */
icalproperty* icalproperty_new_freebusy(struct icalperiodtype v);
void icalproperty_set_freebusy(icalproperty* prop, struct icalperiodtype v);
struct icalperiodtype icalproperty_get_freebusy(icalproperty* prop);

/* DTSTART */
icalproperty* icalproperty_new_dtstart(struct icaltimetype v);
void icalproperty_set_dtstart(icalproperty* prop, struct icaltimetype v);
struct icaltimetype icalproperty_get_dtstart(icalproperty* prop);

/* RECURRENCE-ID */
icalproperty* icalproperty_new_recurrenceid(struct icaltimetype v);
void icalproperty_set_recurrenceid(icalproperty* prop, struct icaltimetype v);
struct icaltimetype icalproperty_get_recurrenceid(icalproperty* prop);

/* SUMMARY */
icalproperty* icalproperty_new_summary(char* v);
void icalproperty_set_summary(icalproperty* prop, char* v);
char* icalproperty_get_summary(icalproperty* prop);

/* DTEND */
icalproperty* icalproperty_new_dtend(struct icaltimetype v);
void icalproperty_set_dtend(icalproperty* prop, struct icaltimetype v);
struct icaltimetype icalproperty_get_dtend(icalproperty* prop);

/* TZNAME */
icalproperty* icalproperty_new_tzname(char* v);
void icalproperty_set_tzname(icalproperty* prop, char* v);
char* icalproperty_get_tzname(icalproperty* prop);

/* RDATE */
icalproperty* icalproperty_new_rdate(struct icalperiodtype v);
void icalproperty_set_rdate(icalproperty* prop, struct icalperiodtype v);
struct icalperiodtype icalproperty_get_rdate(icalproperty* prop);

/* URL */
icalproperty* icalproperty_new_url(char* v);
void icalproperty_set_url(icalproperty* prop, char* v);
char* icalproperty_get_url(icalproperty* prop);

/* ATTACH */
icalproperty* icalproperty_new_attach(struct icalattachtype v);
void icalproperty_set_attach(icalproperty* prop, struct icalattachtype v);
struct icalattachtype icalproperty_get_attach(icalproperty* prop);

/* EXRULE */
icalproperty* icalproperty_new_exrule(struct icalrecurrencetype v);
void icalproperty_set_exrule(icalproperty* prop, struct icalrecurrencetype v);
struct icalrecurrencetype icalproperty_get_exrule(icalproperty* prop);

/* PERCENT-COMPLETE */
icalproperty* icalproperty_new_percentcomplete(int v);
void icalproperty_set_percentcomplete(icalproperty* prop, int v);
int icalproperty_get_percentcomplete(icalproperty* prop);

/* CALSCALE */
icalproperty* icalproperty_new_calscale(char* v);
void icalproperty_set_calscale(icalproperty* prop, char* v);
char* icalproperty_get_calscale(icalproperty* prop);

/* CREATED */
icalproperty* icalproperty_new_created(struct icaltimetype v);
void icalproperty_set_created(icalproperty* prop, struct icaltimetype v);
struct icaltimetype icalproperty_get_created(icalproperty* prop);

/* GEO */
icalproperty* icalproperty_new_geo(struct icalgeotype v);
void icalproperty_set_geo(icalproperty* prop, struct icalgeotype v);
struct icalgeotype icalproperty_get_geo(icalproperty* prop);

/* COMPLETED */
icalproperty* icalproperty_new_completed(struct icaltimetype v);
void icalproperty_set_completed(icalproperty* prop, struct icaltimetype v);
struct icaltimetype icalproperty_get_completed(icalproperty* prop);

/* DTSTAMP */
icalproperty* icalproperty_new_dtstamp(struct icaltimetype v);
void icalproperty_set_dtstamp(icalproperty* prop, struct icaltimetype v);
struct icaltimetype icalproperty_get_dtstamp(icalproperty* prop);

/* DUE */
icalproperty* icalproperty_new_due(struct icaltimetype v);
void icalproperty_set_due(icalproperty* prop, struct icaltimetype v);
struct icaltimetype icalproperty_get_due(icalproperty* prop);

/* ACTION */
icalproperty* icalproperty_new_action(char* v);
void icalproperty_set_action(icalproperty* prop, char* v);
char* icalproperty_get_action(icalproperty* prop);

/*======================================================================
 FILE: icalcomponent.h
======================================================================*/

#include "icalproperty.h"
#include "icalvalue.h"
#include "icalenums.h" /* defines icalcomponent_kind */

typedef void icalcomponent;

icalcomponent* icalcomponent_new(icalcomponent_kind kind);
icalcomponent* icalcomponent_new_from_string(char* str);
void icalcomponent_free(icalcomponent* component);

char* icalcomponent_as_ical_string(icalcomponent* component);

int icalcomponent_is_valid(icalcomponent* component);

icalcomponent_kind icalcomponent_isa(icalcomponent* component);

int icalcomponent_isa_component (void* component);

/* 
 * Working with properties
 */

void icalcomponent_add_property(icalcomponent* component,
				icalproperty* property);

void icalcomponent_remove_property(icalcomponent* component,
				   icalproperty* property);

int icalcomponent_count_properties(icalcomponent* component,
				   icalproperty_kind kind);

/* Iterate through the properties */
icalproperty* icalcomponent_get_first_property(icalcomponent* component,
					       icalproperty_kind kind);
icalproperty* icalcomponent_get_next_property(icalcomponent* component,
					      icalproperty_kind kind);

/* Return a null-terminated array of icalproperties*/

icalproperty** icalcomponent_get_properties(icalcomponent* component,
					    icalproperty_kind kind);


/* 
 * Working with components
 */ 

void icalcomponent_add_component(icalcomponent* parent,
				 icalcomponent* child);

void icalcomponent_remove_component(icalcomponent* parent,
				    icalcomponent* child);

int icalcomponent_count_components(icalcomponent* component,
				   icalcomponent_kind kind);

/* Iterate through components */
icalcomponent* icalcomponent_get_first_component(icalcomponent* component,
						 icalcomponent_kind kind);
icalcomponent* icalcomponent_get_next_component(icalcomponent* component,
						icalcomponent_kind kind);

/* Return a null-terminated array of icalproperties*/
icalproperty** icalcomponent_get_component(icalcomponent* component,
					   icalproperty_kind kind);


int icalcomponent_count_errors(icalcomponent* component);
void icalcomponent_strip_errors(icalcomponent* component);

/*======================================================================
 FILE: iclparser.h
======================================================================*/

icalcomponent* icalparser_parse_string(char* str);
