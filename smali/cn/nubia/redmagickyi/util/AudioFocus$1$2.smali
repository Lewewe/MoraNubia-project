.class Lcn/nubia/redmagickyi/util/AudioFocus$1$2;
.super Ljava/lang/Object;
.source "AudioFocus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/AudioFocus$1;->onAudioFocusChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/util/AudioFocus$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/AudioFocus$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1$2;->this$1:Lcn/nubia/redmagickyi/util/AudioFocus$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1$2;->this$1:Lcn/nubia/redmagickyi/util/AudioFocus$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$100(Lcn/nubia/redmagickyi/util/AudioFocus;)Lcn/nubia/redmagickyi/util/AudioFocus$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1$2;->this$1:Lcn/nubia/redmagickyi/util/AudioFocus$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/AudioFocus;->access$100(Lcn/nubia/redmagickyi/util/AudioFocus;)Lcn/nubia/redmagickyi/util/AudioFocus$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/util/AudioFocus$Listener;->onLossFocusTransient()Z

    :cond_0
    return-void
.end method
