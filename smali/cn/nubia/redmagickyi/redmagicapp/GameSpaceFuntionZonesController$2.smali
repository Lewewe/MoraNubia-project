.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$2;
.super Ljava/lang/Object;
.source "GameSpaceFuntionZonesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->expandAiAgentEntranceCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 474
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->access$200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->access$100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->setViewToDismiss(Landroid/view/View;)V

    .line 478
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->access$200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->expand()V

    return-void
.end method
