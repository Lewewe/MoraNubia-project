.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController$1;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;
.source "StaticsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 55
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;)V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;)V

    return-void
.end method
