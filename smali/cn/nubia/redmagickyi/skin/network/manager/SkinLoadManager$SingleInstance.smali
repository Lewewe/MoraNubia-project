.class Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SingleInstance;
.super Ljava/lang/Object;
.source "SkinLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;-><init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$1;)V

    sput-object v0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
