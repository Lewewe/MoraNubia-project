.class Lcn/nubia/redmagickyi/crop/AudioFocus$1$1;
.super Ljava/lang/Object;
.source "AudioFocus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/AudioFocus$1;->onAudioFocusChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/crop/AudioFocus$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/AudioFocus$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/AudioFocus$1$1;->this$1:Lcn/nubia/redmagickyi/crop/AudioFocus$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus$1$1;->this$1:Lcn/nubia/redmagickyi/crop/AudioFocus$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus$1;->this$0:Lcn/nubia/redmagickyi/crop/AudioFocus;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/AudioFocus;->access$000(Lcn/nubia/redmagickyi/crop/AudioFocus;)Lcn/nubia/redmagickyi/crop/AudioFocus$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/crop/AudioFocus$Listener;->onLossFocus()V

    return-void
.end method
