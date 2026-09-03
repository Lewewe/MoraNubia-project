.class Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$1;
.super Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;
.source "AiAgentMainReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getListener()Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->access$000(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;)Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    move-result-object p0

    return-object p0
.end method
