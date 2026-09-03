.class public Lcn/nubia/redmagickyi/crop/VideoEditorHelper;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/VideoEditorHelper$MyHandler;,
        Lcn/nubia/redmagickyi/crop/VideoEditorHelper$LoadDialog;
    }
.end annotation


# static fields
.field private static final ERR_INVALID:I = 0x3e9

.field private static final ERR_IO:I = 0x3ec

.field private static final MAX_FILE_LENGTH:J = 0xfa000000L

.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final MSG_TASK_ERR:I = 0x2

.field private static final M_SEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "VideoAddMediaFileHelper"

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'EDIT\'_yyyyMMdd_HHmmss"

.field private static final U_SEC:J = 0xf4240L

.field private static final VIDEO_EDITOR_PATH:Ljava/lang/String; = "editor-path"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDstFileInfo:Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;

.field private mEditorUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHeadSource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

.field private mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

.field private mLoadDialog:Lcn/nubia/redmagickyi/crop/VideoEditorHelper$LoadDialog;

.field private mNeedSpace:J

.field private mTailSource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoDuration:J

.field private mVideoEditor:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

.field private mVideoSaveUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcn/nubia/redmagickyi/crop/VideoEditorInfo;Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mHeadSource:Ljava/util/ArrayList;

    .line 52
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mTailSource:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    .line 53
    iput-wide v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoDuration:J

    .line 54
    iput-wide v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mNeedSpace:J

    .line 57
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoEditor:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    .line 58
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mEditorUri:Landroid/net/Uri;

    .line 59
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mView:Landroid/view/View;

    .line 64
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoUri:Landroid/net/Uri;

    .line 66
    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoSaveUri:Landroid/net/Uri;

    .line 67
    iput-object p5, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    .line 68
    iput-object p4, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    .line 70
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->init()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/net/Uri;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mEditorUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mEditorUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->cleanProgressDialog()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mDstFileInfo:Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoEditor:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cleanProgressDialog()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mLoadDialog:Lcn/nubia/redmagickyi/crop/VideoEditorHelper$LoadDialog;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$LoadDialog;->dismiss()V

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mLoadDialog:Lcn/nubia/redmagickyi/crop/VideoEditorHelper$LoadDialog;

    :cond_0
    return-void
.end method

.method private getAvailableSpace(Ljava/lang/String;)J
    .locals 2

    const/16 p0, 0x2f

    .line 279
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 281
    :try_start_0
    new-instance p1, Landroid/os/StatFs;

    invoke-direct {p1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0

    :catch_0
    move-exception p0

    .line 284
    const-string p1, "VideoTrim"

    const-string v0, "Fail to access sd storage"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private hwVideoEditor()V
    .locals 6

    .line 110
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcn/nubia/mediaeditor/utils/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->release()V

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onFinish()V

    return-void

    .line 120
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mDstFileInfo:Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFile:Ljava/io/File;

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 125
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v1, v0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->isLowSpace(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 128
    new-instance v0, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->spaceIsLow_tip:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->release()V

    .line 130
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->cleanProgressDialog()V

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mView:Landroid/view/View;

    if-eqz p0, :cond_3

    .line 132
    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    return-void

    .line 137
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide v4, 0xfa000000L

    if-eqz v1, :cond_6

    iget-wide v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mNeedSpace:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_5

    goto :goto_2

    .line 149
    :cond_5
    new-instance v1, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    invoke-direct {v1, v2, v0, v3}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/redmagickyi/crop/VideoEditorInfo;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoEditor:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    .line 150
    new-instance v0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;-><init>(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)V

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->setOnErrorListener(Lcn/nubia/mediaeditor/editor/common/Generator$OnErrorListener;)V

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoEditor:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    iget-wide v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoDuration:J

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->setMaxDuration(J)V

    .line 171
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoEditor:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->setVideoParams()V

    .line 173
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoEditor:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->setSaveOriginalAudio()V

    .line 174
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoEditor:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mDstFileInfo:Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;

    iget-object v1, v1, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->setOutputPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 189
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoEditor:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    new-instance v1, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;-><init>(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->setOnCompleteListener(Lcn/nubia/mediaeditor/editor/common/Generator$OnCompleteListener;)V

    .line 230
    :try_start_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoEditor:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->startEdit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 138
    :cond_6
    :goto_2
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mNeedSpace:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_7

    .line 139
    new-instance v0, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->file_upperLimit:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    .line 141
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->release()V

    .line 142
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->cleanProgressDialog()V

    .line 143
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mView:Landroid/view/View;

    if-eqz p0, :cond_8

    .line 144
    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    return-void

    .line 121
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->release()V

    .line 122
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onFinish()V

    return-void
.end method

.method private init()V
    .locals 9

    .line 74
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTrimMode:I

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v3, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v5, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    sub-long/2addr v3, v5

    mul-long/2addr v3, v1

    iput-wide v3, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoDuration:J

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    int-to-long v3, v0

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v5, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v7, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    mul-long/2addr v3, v1

    iput-wide v3, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoDuration:J

    .line 79
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils;->getDstMp4FileInfoFromSaveUri(Landroid/content/Context;Landroid/net/Uri;)Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mDstFileInfo:Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;

    .line 82
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$MyHandler;-><init>(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isLowSpace(Ljava/io/File;Ljava/lang/String;)Z
    .locals 12

    .line 291
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 292
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget p1, p1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    if-lez p1, :cond_2

    .line 293
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide p1

    .line 294
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTrimMode:I

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    if-nez v2, :cond_0

    .line 295
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v6, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v8, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    sub-long/2addr v6, v8

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mImageHeadDuration:I

    int-to-long v8, v2

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mImageTailDuration:I

    int-to-long v8, v2

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    mul-long/2addr v0, v6

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    int-to-long v4, v2

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mNeedSpace:J

    goto :goto_0

    .line 297
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTrimMode:I

    if-ne v2, v3, :cond_1

    .line 298
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    int-to-long v6, v2

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v8, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v10, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mImageHeadDuration:I

    int-to-long v8, v2

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mImageTailDuration:I

    int-to-long v8, v2

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    mul-long/2addr v0, v6

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    int-to-long v4, v2

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mNeedSpace:J

    .line 301
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mNeedSpace:J

    const-wide/32 v4, 0x200000

    add-long/2addr v0, v4

    cmp-long p0, p1, v0

    if-gez p0, :cond_2

    return v3

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private showProgressDialog()V
    .locals 2

    .line 266
    new-instance v0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$LoadDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$LoadDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mLoadDialog:Lcn/nubia/redmagickyi/crop/VideoEditorHelper$LoadDialog;

    .line 267
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$LoadDialog;->show()V

    return-void
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoEditor:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->stop()V

    .line 248
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mVideoEditor:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    .line 250
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mHeadSource:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 252
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mHeadSource:Ljava/util/ArrayList;

    .line 254
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mTailSource:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 256
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mTailSource:Ljava/util/ArrayList;

    .line 258
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->cleanProgressDialog()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 261
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public startEditVideo(Landroid/view/View;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->mView:Landroid/view/View;

    .line 240
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->showProgressDialog()V

    .line 241
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->hwVideoEditor()V

    return-void
.end method
