.class Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;
.super Ljava/lang/Object;
.source "PowerChargeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$200(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    new-instance v1, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-direct {v1, v2, v2}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$302(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/UnityPlayer;

    .line 274
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->unityview:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$402(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 275
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$300(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$300(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$300(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 278
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$300(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 279
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$500(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$300(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$500(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    :cond_0
    return-void
.end method
