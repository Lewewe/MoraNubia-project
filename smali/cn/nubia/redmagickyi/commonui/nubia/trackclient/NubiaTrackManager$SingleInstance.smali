.class Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$SingleInstance;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;-><init>(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$1;)V

    sput-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
