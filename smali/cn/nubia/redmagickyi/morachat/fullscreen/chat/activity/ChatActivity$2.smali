.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V
    .locals 0

    return-void
.end method

.method public onDigitalHumanSettingsChanged(Ljava/lang/String;)V
    .locals 1

    .line 156
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/database/Property;->DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$BackgroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->changeUnitySkin()V

    .line 161
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 162
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->stopTTS()V

    :cond_1
    return-void
.end method

.method public onScreenStatusChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 169
    const-string p2, "VOICE_ASSISTANT_MORA_VOICE_WAKEUP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Z

    :cond_0
    return-void
.end method
