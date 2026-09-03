.class Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$3;
.super Ljava/lang/Object;
.source "AndroidPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setOnBufferingUpdateListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnBufferingUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

.field final synthetic val$listener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnBufferingUpdateListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnBufferingUpdateListener;)V
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

    .line 225
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$3;->this$0:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$3;->val$listener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnBufferingUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 229
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$3;->val$listener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnBufferingUpdateListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$3;->this$0:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-interface {p1, p0, p2}, Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;I)V

    return-void
.end method
