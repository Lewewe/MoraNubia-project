.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$3;
.super Ljava/lang/Object;
.source "GameSpaceFuntionZonesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCard()V
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

    .line 490
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 493
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->access$200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->packup()V

    return-void
.end method
