.class Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;
.super Ljava/lang/Object;
.source "EditorPlayerController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->setMediaNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyMediaState(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 118
    :pswitch_1
    new-instance p1, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$000(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->missing_file:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    .line 119
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$100(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/EditorView;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->show()V

    goto/16 :goto_0

    .line 147
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$000(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 149
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->relayout()V

    goto/16 :goto_0

    .line 142
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->onPause()V

    .line 143
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$100(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/EditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->updatePlayPause()V

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$100(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/EditorView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->onFinish(Z)V

    goto/16 :goto_0

    .line 122
    :pswitch_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$100(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/EditorView;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->updatePlayPause()V

    goto :goto_0

    .line 125
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$100(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/EditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->onPlaying()V

    .line 126
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$200(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getPlayerState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$300(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->onPause()V

    .line 128
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$100(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/EditorView;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->updatePlayPause()V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$100(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/EditorView;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->updatePlayPause()V

    goto :goto_0

    .line 134
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$402(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;Z)Z

    .line 135
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$500(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)V

    .line 136
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$100(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/EditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->onPrepared()V

    .line 137
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$100(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/EditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->setDuration()V

    .line 138
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$600(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->start()V

    goto :goto_0

    .line 153
    :pswitch_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$100(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/EditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->updatePlayPause()V

    .line 154
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->access$100(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/EditorView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->onFinish(Z)V

    goto :goto_0

    .line 115
    :pswitch_8
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;->this$0:Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->onFinish()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
