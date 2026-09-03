.class Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$5;
.super Ljava/lang/Object;
.source "AndroidPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setOnVideoSizeChangedListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

.field final synthetic val$listener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;)V
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

    .line 251
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$5;->this$0:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$5;->val$listener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 255
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$5;->val$listener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$5;->this$0:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-interface {p1, p0, p2, p3}, Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;II)V

    return-void
.end method
