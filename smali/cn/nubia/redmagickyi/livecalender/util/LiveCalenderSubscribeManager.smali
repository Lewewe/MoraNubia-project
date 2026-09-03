.class public Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;
.super Ljava/lang/Object;
.source "LiveCalenderSubscribeManager.java"


# static fields
.field private static CALENDAR_DISPLAY_NAME:Ljava/lang/String; = null

.field private static CALENDAR_TYPE_NAME:Ljava/lang/String; = "live_calendar"


# instance fields
.field private calendarReminderUtils:Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;

.field private context:Landroid/content/Context;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/common/R$string;->redmagickyi_app_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->live_calender_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->CALENDAR_DISPLAY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->context:Landroid/content/Context;

    .line 35
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;

    sget-object v1, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->CALENDAR_TYPE_NAME:Ljava/lang/String;

    sget-object v2, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->CALENDAR_DISPLAY_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->calendarReminderUtils:Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;

    .line 36
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    new-instance v1, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager$1;-><init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;Landroid/content/Context;)V

    const p1, 0x15f90

    invoke-direct {v0, p1, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    return-void
.end method

.method private hasPermission()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v0, :cond_0

    .line 134
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private subscribe()V
    .locals 10

    .line 61
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->unsubscribe()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryLiveActivities()Ljava/util/List;

    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    .line 66
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;

    .line 67
    new-instance v6, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;

    invoke-direct {v6}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;-><init>()V

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->setId(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->setName(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->setDescription(Ljava/lang/String;)V

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->context:Landroid/content/Context;

    sget v9, Lcn/nubia/redmagickyi/main/R$string;->live_calender_address:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->setLocation(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getBeginTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->getTimestamp(Ljava/util/Date;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->setStartTimestamp(J)V

    .line 73
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getEndTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->getTimestamp(Ljava/util/Date;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcn/nubia/redmagickyi/livecalender/util/calendar/ScheduleDetail;->setEndTimestamp(J)V

    .line 74
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 78
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->calendarReminderUtils:Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->addCalendarEvent(Ljava/util/List;)V

    return-void
.end method

.method private unsubscribe()V
    .locals 4

    .line 86
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryBeginTime()Ljava/util/Date;

    move-result-object v0

    const-string v1, "00:00:00"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->getTimestamp(Ljava/util/Date;Ljava/lang/String;)J

    move-result-wide v0

    .line 87
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryEndTime()Ljava/util/Date;

    move-result-object v2

    const-string v3, "23:59:59"

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->getTimestamp(Ljava/util/Date;Ljava/lang/String;)J

    move-result-wide v2

    .line 88
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->calendarReminderUtils:Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/redmagickyi/livecalender/util/calendar/CalendarReminderUtils;->deleteCalendarEvent(JJ)V

    return-void
.end method


# virtual methods
.method public checkSubscribeState()Z
    .locals 1

    .line 121
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->isMessagePushOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->hasPermission()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initSubscribeState()V
    .locals 2

    .line 97
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->isMessagePushOpen()Z

    move-result v0

    .line 98
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->hasPermission()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    .line 102
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->subscribe()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 109
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->unsubscribe()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)Ljava/lang/Boolean;
    .locals 1

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->getRequestCode()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 147
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 148
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 150
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    const/4 p0, 0x0

    .line 151
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public requestAndCheckPermission(Landroid/app/Activity;)Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 160
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->hasPermission()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateSubscribeState(Z)V
    .locals 1

    .line 128
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->updateMessagePush(Z)V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->initSubscribeState()V

    return-void
.end method
