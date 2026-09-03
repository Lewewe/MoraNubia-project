.class public abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseWallPaperReportUsedController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperReportUsedResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController;
    .locals 1

    .line 17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "wallpaperId cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public load(I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController;
    .locals 2

    .line 21
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController$Task;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController$1;)V

    .line 22
    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController$Task;->access$102(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController$Task;I)I

    .line 23
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperReportUsedResponse;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController;->load()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperReportUsedController;

    move-result-object p0

    return-object p0
.end method
