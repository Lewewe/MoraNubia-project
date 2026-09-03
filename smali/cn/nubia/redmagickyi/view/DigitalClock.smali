.class public Lcn/nubia/redmagickyi/view/DigitalClock;
.super Landroid/widget/RelativeLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "HH:mm"

.field private static final TAG:Ljava/lang/String; = "DigitalClock"


# instance fields
.field private defaultTime:Z

.field private isArabWords:Z

.field private mAmPmDis:Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mFormat:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mLive:Z

.field private mOriginTimeTextSize:F

.field private final mTimeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeDisplay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 66
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mLive:Z

    .line 67
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->defaultTime:Z

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcn/nubia/redmagickyi/view/DigitalClock$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/DigitalClock$1;-><init>(Lcn/nubia/redmagickyi/view/DigitalClock;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Arabic:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->isArabWords:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/DigitalClock;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mLive:Z

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/view/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    .line 93
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 94
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mAttached:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mAttached:Z

    .line 96
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mLive:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->defaultTime:Z

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/DigitalClock;->updateTime()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 111
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 112
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mAttached:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mAttached:Z

    .line 114
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/DigitalClock;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 116
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    const-string p0, "DigitalClock"

    const-string v0, "failed unregist timeChangeReceiver"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 84
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_time:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    .line 85
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mOriginTimeTextSize:F

    .line 86
    new-instance v0, Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mAmPmDis:Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 88
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/DigitalClock;->setDateFormat()V

    return-void
.end method

.method public setDateFormat()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "h:mm"

    if-eqz v0, :cond_0

    const-string v0, "HH:mm"

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 147
    :goto_0
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mFormat:Ljava/lang/String;

    .line 148
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mAmPmDis:Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;->access$300(Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;Z)V

    return-void
.end method

.method public setLive(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mLive:Z

    return-void
.end method

.method public setNotSetDefaultTime(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->defaultTime:Z

    return-void
.end method

.method public updateTime()V
    .locals 3

    .line 134
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mLive:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mAmPmDis:Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;->access$200(Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;Z)V

    .line 139
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mLive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->isArabWords:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget v1, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mOriginTimeTextSize:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 141
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    return-void
.end method

.method public updateTime(Ljava/util/Calendar;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 130
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/DigitalClock;->updateTime()V

    return-void
.end method
