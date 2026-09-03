.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/util/DoubleClickListener;
.super Ljava/lang/Object;
.source "DoubleClickListener.java"


# static fields
.field private static final MIN_CLICK_DELAY_TIME:I = 0x12c

.field private static lastClickTime:J

.field private static lastView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOnDoubleClick(Landroid/view/View;)Z
    .locals 6

    .line 14
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/DoubleClickListener;->lastView:Landroid/view/View;

    if-eq p0, v0, :cond_0

    const-wide/16 v0, 0x0

    .line 15
    sput-wide v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/DoubleClickListener;->lastClickTime:J

    .line 16
    sput-object p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/DoubleClickListener;->lastView:Landroid/view/View;

    .line 18
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 19
    sget-wide v2, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/DoubleClickListener;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long p0, v2, v4

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 22
    :cond_1
    sput-wide v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/DoubleClickListener;->lastClickTime:J

    const/4 p0, 0x0

    return p0
.end method
