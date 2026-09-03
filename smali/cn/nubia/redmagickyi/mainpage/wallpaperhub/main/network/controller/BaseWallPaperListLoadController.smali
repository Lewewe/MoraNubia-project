.class public abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseWallPaperListLoadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEVICE_MOBILE:Ljava/lang/String; = "1"

.field private static final DEVICE_PAD:Ljava/lang/String; = "2"

.field public static final MAX_PAGE_SIZE:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getRequestCategory()I
.end method

.method public load()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController;
    .locals 2

    .line 23
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController$Task;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController$1;)V

    .line 25
    const-class v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController;->load()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController;

    move-result-object p0

    return-object p0
.end method
