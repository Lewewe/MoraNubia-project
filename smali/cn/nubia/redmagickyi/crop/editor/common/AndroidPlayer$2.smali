.class Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$2;
.super Ljava/lang/Object;
.source "AndroidPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setOnCompletionListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

.field final synthetic val$listener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$2;->this$0:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$2;->val$listener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 216
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$2;->val$listener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$2;->this$0:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;->onCompletion(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;)V

    return-void
.end method
