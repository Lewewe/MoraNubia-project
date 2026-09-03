.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$1;
.super Ljava/lang/Object;
.source "GameSpaceFuntionZonesController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->initView(Landroid/view/View;)V
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

    .line 141
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public launchAiAgentSettings()V
    .locals 0

    .line 154
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->AiAgentSettings()V

    return-void
.end method

.method public onExpandAiAgentEntranceCard()V
    .locals 1

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->AiAgentEntranceCard(Z)V

    return-void
.end method

.method public onPackupAiAgentEntranceCard()V
    .locals 1

    .line 149
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->AiAgentEntranceCard(Z)V

    return-void
.end method
