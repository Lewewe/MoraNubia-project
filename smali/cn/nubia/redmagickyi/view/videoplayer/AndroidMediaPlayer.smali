.class public Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "AndroidMediaPlayer.java"


# instance fields
.field private proxyUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public getProxyUrl()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->proxyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getRawUrl()Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->proxyUrl:Ljava/lang/String;

    return-void
.end method

.method public setRawUrl(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->url:Ljava/lang/String;

    return-void
.end method
