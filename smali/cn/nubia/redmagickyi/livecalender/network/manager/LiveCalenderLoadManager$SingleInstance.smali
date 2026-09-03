.class Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$SingleInstance;
.super Ljava/lang/Object;
.source "LiveCalenderLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;-><init>(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$1;)V

    sput-object v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
