.class Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$7;
.super Ljava/lang/Object;
.source "AndroidPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setOnInfoListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

.field final synthetic val$listener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;)V
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

    .line 275
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$7;->this$0:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$7;->val$listener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 279
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$7;->val$listener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$7;->this$0:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-interface {p1, p0, p2, p3}, Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;->onInfo(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;II)Z

    move-result p0

    return p0
.end method
