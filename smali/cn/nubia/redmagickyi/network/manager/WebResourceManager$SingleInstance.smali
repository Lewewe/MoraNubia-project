.class Lcn/nubia/redmagickyi/network/manager/WebResourceManager$SingleInstance;
.super Ljava/lang/Object;
.source "WebResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/manager/WebResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lcn/nubia/redmagickyi/network/manager/WebResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;-><init>(Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;)V

    sput-object v0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/network/manager/WebResourceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
