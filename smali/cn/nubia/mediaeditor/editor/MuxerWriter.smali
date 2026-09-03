.class public Lcn/nubia/mediaeditor/editor/MuxerWriter;
.super Ljava/lang/Object;
.source "MuxerWriter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MuxerWriter"


# instance fields
.field private mAudioPts:J

.field private mCompleteTracks:I

.field private mCurrentProgress:J

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/mediaeditor/editor/common/AVFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDuration:J

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerLock:Ljava/lang/Object;

.field private mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOnCompleteListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnCompleteListener;

.field private mOnProgressListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnProgressListener;

.field private mPath:Ljava/lang/String;

.field private mTotalTracks:I

.field private mTrackIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoPts:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mTotalTracks:I

    const-wide/16 v1, 0x0

    .line 30
    iput-wide v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mAudioPts:J

    .line 31
    iput-wide v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mVideoPts:J

    .line 32
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    .line 33
    iput-object v3, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mPath:Ljava/lang/String;

    .line 34
    iput-object v3, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 35
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mTrackIndex:Ljava/util/HashMap;

    .line 38
    iput v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mCompleteTracks:I

    .line 39
    iput-wide v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMaxDuration:J

    .line 40
    iput-wide v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mCurrentProgress:J

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "rw"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 52
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 53
    new-instance p1, Landroid/media/MediaMuxer;

    iget-object p2, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mTotalTracks:I

    const-wide/16 v1, 0x0

    .line 30
    iput-wide v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mAudioPts:J

    .line 31
    iput-wide v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mVideoPts:J

    .line 32
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    .line 33
    iput-object v3, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mPath:Ljava/lang/String;

    .line 34
    iput-object v3, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 35
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mTrackIndex:Ljava/util/HashMap;

    .line 38
    iput v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mCompleteTracks:I

    .line 39
    iput-wide v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMaxDuration:J

    .line 40
    iput-wide v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mCurrentProgress:J

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mPath:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    return-void
.end method

.method private declared-synchronized addMediaFormat(Landroid/media/MediaFormat;)V
    .locals 5

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 91
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    iget-object v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    .line 94
    iget-object v2, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mTrackIndex:Ljava/util/HashMap;

    const-string v3, "mime"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 94
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mTrackIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mTotalTracks:I

    if-lt p1, v1, :cond_0

    .line 98
    const-string p1, "MuxerWriter"

    const-string v1, "all tracks have added, start Muxer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    .line 100
    iget-object p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    :cond_0
    :goto_0
    iget-object p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 103
    iget-object p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/mediaeditor/editor/common/AVFrame;

    .line 104
    const-string v1, "MuxerWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chenpeng1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p1, Lcn/nubia/mediaeditor/editor/common/AVFrame;->data:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 108
    iget-object v2, p1, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-object p1, p1, Lcn/nubia/mediaeditor/editor/common/AVFrame;->mimeType:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->writeSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 87
    :cond_3
    :try_start_3
    const-string p1, "MuxerWriter"

    const-string v0, "Muxer has started , MediaFormat should not change"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "MediaFormat changed after MediaMuxer started"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private notifyProgressUpdate(J)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mOnProgressListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnProgressListener;

    if-eqz p0, :cond_0

    .line 151
    invoke-interface {p0, p1, p2}, Lcn/nubia/mediaeditor/editor/common/Generator$OnProgressListener;->onProgress(J)V

    :cond_0
    return-void
.end method

.method private updateProgress(JLjava/lang/String;)V
    .locals 4

    .line 138
    iget-wide v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMaxDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 139
    const-string v0, "video/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iput-wide p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mVideoPts:J

    goto :goto_0

    .line 141
    :cond_0
    const-string v0, "audio/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 142
    iput-wide p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mAudioPts:J

    .line 144
    :cond_1
    :goto_0
    iget-wide p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mVideoPts:J

    iget-wide v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mAudioPts:J

    add-long/2addr p1, v0

    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMaxDuration:J

    iget p3, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mTotalTracks:I

    int-to-long v2, p3

    mul-long/2addr v0, v2

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mCurrentProgress:J

    .line 145
    invoke-direct {p0, p1, p2}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->notifyProgressUpdate(J)V

    :cond_2
    return-void
.end method

.method private writeSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const-string v0, "MuxerWriter"

    const-string v1, "Muxer hasn\'t started!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;

    invoke-direct {v0}, Lcn/nubia/mediaeditor/editor/common/AVFrame;-><init>()V

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->data:[B

    .line 121
    iput-object p2, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 122
    iput-object p3, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->mimeType:Ljava/lang/String;

    .line 123
    const-string p1, "MuxerWriter"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "chenpeng0 = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1, p3}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->updateProgress(JLjava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_1

    .line 130
    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mTrackIndex:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 133
    :cond_1
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public isMuxerStarted()Z
    .locals 0

    .line 82
    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->writeSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onOutputComplete(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 156
    :try_start_0
    iget p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mCompleteTracks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mCompleteTracks:I

    iget v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mTotalTracks:I

    if-lt p1, v0, :cond_1

    .line 157
    const-string p1, "MuxerWriter"

    const-string v0, "onOutputComplete"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-wide v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMaxDuration:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const-wide/16 v0, 0x64

    .line 159
    invoke-direct {p0, v0, v1}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->notifyProgressUpdate(J)V

    .line 161
    :cond_0
    iget-object p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mOnCompleteListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnCompleteListener;

    if-eqz p1, :cond_1

    .line 162
    invoke-interface {p1}, Lcn/nubia/mediaeditor/editor/common/Generator$OnCompleteListener;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->addMediaFormat(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    iget-object v2, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 190
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    iput-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 190
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 193
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 195
    :goto_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 197
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 198
    iput-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public rename(Ljava/lang/String;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 218
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public setLocation(FF)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMaxDuration(J)V
    .locals 0

    .line 232
    iput-wide p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMaxDuration:J

    return-void
.end method

.method public setMuxTracks(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mTotalTracks:I

    return-void
.end method

.method public setOnCompleteListener(Lcn/nubia/mediaeditor/editor/common/Generator$OnCompleteListener;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mOnCompleteListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnCompleteListener;

    return-void
.end method

.method public setOnProgressListener(Lcn/nubia/mediaeditor/editor/common/Generator$OnProgressListener;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mOnProgressListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnProgressListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 2

    .line 168
    const-string v0, "MuxerWriter"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :try_start_1
    iget-object v1, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 174
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 178
    :goto_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->release()V

    :cond_1
    return-void
.end method
