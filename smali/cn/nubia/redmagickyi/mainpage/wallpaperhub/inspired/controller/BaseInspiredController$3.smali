.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$3;
.super Ljava/lang/Object;
.source "BaseInspiredController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->onLoadComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

.field final synthetic val$skinList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$3;->val$skinList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2

    .line 150
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$3;->val$skinList:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->updateWallPaperList(ZLjava/util/List;)V

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$3;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;)V

    return-void
.end method
