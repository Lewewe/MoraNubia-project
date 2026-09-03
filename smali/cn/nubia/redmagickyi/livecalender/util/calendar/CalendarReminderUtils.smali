.class public Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;
.super Ljava/lang/Object;
.source "CalendarReminderUtils.java"


# static fields
.field private static final CALENDARS_ACCOUNT_NAME:Ljava/lang/String;

.field private static final CALENDARS_NAME:Ljava/lang/String;

.field private static final CALENDER_EVENT_URL:Landroid/net/Uri;

.field private static final CALENDER_REMINDER_URL:Landroid/net/Uri;

.field private static final CALENDER_URL:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "CalendarReminderUtils"

.field private static final context:Landroid/content/Context;


# instance fields
.field private accountType:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private isCalendarHandle:Z

.field private isUseMyCalendarAccount:Z

.field private prefixCalendarSyncId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->context:Landroid/content/Context;

    .line 26
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sput-object v1, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDER_URL:Landroid/net/Uri;

    .line 27
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sput-object v1, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDER_EVENT_URL:Landroid/net/Uri;

    .line 28
    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sput-object v1, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDER_REMINDER_URL:Landroid/net/Uri;

    .line 29
    sget v1, Lcn/nubia/redmagickyi/common/R$string;->redmagickyi_app_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDARS_NAME:Ljava/lang/String;

    .line 30
    sget v1, Lcn/nubia/redmagickyi/common/R$string;->redmagickyi_app_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDARS_ACCOUNT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    .line 40
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isUseMyCalendarAccount:Z

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->prefixCalendarSyncId:Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->accountType:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->displayName:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized addCalendarAccount()J
    .locals 8

    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    .line 125
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 126
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 127
    const-string v5, "name"

    sget-object v6, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDARS_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v5, "account_name"

    sget-object v6, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDARS_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v5, "account_type"

    iget-object v7, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v5, "calendar_displayName"

    iget-object v7, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v5, "visible"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v5, "calendar_color"

    const v7, -0xffff01

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v5, "calendar_access_level"

    const/16 v7, 0x2bc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v5, "sync_events"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v0, "calendar_timezone"

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "ownerAccount"

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "canOrganizerRespond"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDER_URL:Landroid/net/Uri;

    .line 139
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "caller_is_syncadapter"

    const-string v7, "true"

    .line 140
    invoke-virtual {v0, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "account_name"

    .line 141
    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "account_type"

    iget-object v6, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->accountType:Ljava/lang/String;

    .line 142
    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 144
    sget-object v5, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 145
    iput-boolean v3, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 147
    monitor-exit p0

    return-wide v1

    .line 149
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 152
    :cond_1
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkAndAddCalendarAccount()I
    .locals 4

    .line 50
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isUseMyCalendarAccount:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->checkMyCalendarAccount()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->checkCalendarAccount()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    return v0

    .line 54
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->addCalendarAccount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 56
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isUseMyCalendarAccount:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->checkMyCalendarAccount()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->checkCalendarAccount()I

    move-result p0

    :goto_1
    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private checkCalendarAccount()I
    .locals 6

    .line 68
    sget-object p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDER_URL:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    .line 82
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 73
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 75
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 82
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :cond_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_5
    throw v0
.end method

.method private checkMyCalendarAccount()I
    .locals 7

    .line 92
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDER_URL:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v1

    .line 97
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    if-nez v3, :cond_2

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_1

    .line 103
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 105
    :goto_1
    const-string v4, "account_type"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    iget-object v5, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    const-string p0, "_id"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return p0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return v1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_7
    throw p0
.end method


# virtual methods
.method public declared-synchronized addCalendarEvent(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 160
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->context:Landroid/content/Context;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 163
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->checkAndAddCalendarAccount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gez v1, :cond_1

    .line 215
    :try_start_1
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 167
    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 168
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;

    .line 170
    const-string v4, "CalendarReminderUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addCalendarEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->getName()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 174
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->getStartTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 175
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 176
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->getEndTimestamp()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 177
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 178
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 179
    const-string v10, "title"

    invoke-virtual {v5, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 181
    const-string v4, "eventLocation"

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_2
    const-string v4, "description"

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v4, "original_sync_id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->prefixCalendarSyncId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v4, "original_id"

    const-string v10, "original_sync_id"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v4, "calendar_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v4, "dtstart"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    const-string v4, "dtend"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v4, "hasAlarm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v4, "eventTimezone"

    const-string v6, "Asia/Shanghai"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v4, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDER_EVENT_URL:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_3

    .line 194
    const-string p1, "CalendarReminderUtils"

    const-string v1, "addCalendarEvent failed by event"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    :try_start_3
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 199
    :cond_3
    :try_start_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 200
    const-string v7, "event_id"

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    const-string v5, "minutes"

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->getPreviousMinutes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v3, "method"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDER_REMINDER_URL:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_4

    .line 206
    const-string p1, "CalendarReminderUtils"

    const-string v1, "addCalendarEvent failed by reminder"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 215
    :try_start_5
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 209
    :cond_4
    :try_start_6
    const-string v3, "CalendarReminderUtils"

    const-string v4, "addCalendarEvent success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 215
    :cond_5
    :goto_1
    :try_start_7
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    goto :goto_3

    :cond_6
    :goto_2
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 213
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 217
    :goto_3
    monitor-exit p0

    return-void

    .line 215
    :goto_4
    :try_start_9
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    .line 216
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteCalendarEvent(JJ)V
    .locals 11

    monitor-enter p0

    .line 274
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 275
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 281
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->checkAndAddCalendarAccount()I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_1

    .line 283
    const-string v5, "(calendar_id = ?)"

    .line 284
    new-array v6, v4, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    move-object v8, v5

    move-object v9, v6

    goto :goto_0

    :cond_1
    move-object v8, v2

    move-object v9, v8

    .line 286
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDER_EVENT_URL:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_3

    .line 319
    :try_start_2
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    if-eqz v0, :cond_2

    .line 321
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 288
    :cond_2
    monitor-exit p0

    return-void

    .line 290
    :cond_3
    :try_start_3
    iget-boolean v3, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    if-nez v3, :cond_6

    .line 291
    iput-boolean v4, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    .line 292
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 293
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 294
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_6

    .line 295
    const-string v3, "original_sync_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 296
    const-string v4, "dtstart"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 297
    const-string v6, "dtend"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-ltz v6, :cond_5

    cmp-long v4, v4, p3

    if-gtz v4, :cond_5

    .line 300
    iget-object v4, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->prefixCalendarSyncId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 302
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 303
    sget-object v5, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDER_EVENT_URL:Landroid/net/Uri;

    int-to-long v6, v4

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 304
    sget-object v5, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 306
    const-string v4, "CalendarReminderUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteCalendarEvent failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 308
    :cond_4
    const-string v4, "CalendarReminderUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteCalendarEvent success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_5
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 319
    :cond_6
    :try_start_4
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    if-eqz v0, :cond_7

    .line 321
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v2, v0

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 317
    :goto_3
    :try_start_5
    const-string p2, "CalendarReminderUtils"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 319
    :try_start_6
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    if-eqz v2, :cond_7

    .line 321
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 324
    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    .line 319
    :goto_5
    :try_start_7
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    if-eqz v2, :cond_8

    .line 321
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_8
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteCalendarEvent(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 224
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->context:Landroid/content/Context;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 229
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->checkAndAddCalendarAccount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ltz v1, :cond_1

    .line 231
    const-string v5, "(calendar_id = ?)"

    .line 232
    new-array v6, v2, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    move-object v8, v5

    move-object v9, v6

    goto :goto_0

    :cond_1
    move-object v8, v4

    move-object v9, v8

    .line 234
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDER_EVENT_URL:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3

    .line 262
    iput-boolean v3, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    if-eqz v0, :cond_2

    .line 264
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :cond_2
    monitor-exit p0

    return-void

    .line 239
    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    if-nez v1, :cond_6

    .line 240
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 243
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 244
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    .line 245
    const-string v1, "original_sync_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->prefixCalendarSyncId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 249
    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 250
    sget-object v7, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->CALENDER_EVENT_URL:Landroid/net/Uri;

    int-to-long v8, v6

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 251
    sget-object v7, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 253
    const-string v6, "CalendarReminderUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteCalendarEvent failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 257
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 262
    :cond_6
    :try_start_2
    iput-boolean v3, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    if-eqz v0, :cond_7

    .line 264
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 267
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 262
    :try_start_3
    iput-boolean v3, p0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->isCalendarHandle:Z

    if-eqz v0, :cond_8

    .line 264
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_8
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 225
    :cond_9
    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
