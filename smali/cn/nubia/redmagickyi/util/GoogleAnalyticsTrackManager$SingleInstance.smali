.class Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager$SingleInstance;
.super Ljava/lang/Object;
.source "GoogleAnalyticsTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
