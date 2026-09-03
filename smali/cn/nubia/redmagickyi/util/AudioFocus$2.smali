.class Lcn/nubia/redmagickyi/util/AudioFocus$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/AudioFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/AudioFocus;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/AudioFocus;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$2;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$2;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$500(Lcn/nubia/redmagickyi/util/AudioFocus;)Landroid/media/AudioManager;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$402(Lcn/nubia/redmagickyi/util/AudioFocus;I)I

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "receive volume changed to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus$2;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$400(Lcn/nubia/redmagickyi/util/AudioFocus;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioFocus"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
