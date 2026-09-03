.class Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$SingleInstance;
.super Ljava/lang/Object;
.source "VideoListLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;-><init>(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$1;)V

    sput-object v0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
