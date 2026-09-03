.class Lcn/nubia/redmagickyi/util/RecordingListener$1;
.super Landroid/media/AudioManager$AudioRecordingCallback;
.source "RecordingListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/RecordingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/RecordingListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/RecordingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/RecordingListener$1;->this$0:Lcn/nubia/redmagickyi/util/RecordingListener;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingConfigChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RecordingListener$1;->this$0:Lcn/nubia/redmagickyi/util/RecordingListener;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/RecordingListener;->access$100(Lcn/nubia/redmagickyi/util/RecordingListener;Ljava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/RecordingListener;->access$002(Lcn/nubia/redmagickyi/util/RecordingListener;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 129
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/RecordingListener$1;->this$0:Lcn/nubia/redmagickyi/util/RecordingListener;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/RecordingListener;->access$200(Lcn/nubia/redmagickyi/util/RecordingListener;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    .line 130
    invoke-interface {p1}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
