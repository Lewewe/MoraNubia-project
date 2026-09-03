.class public Lcom/zte/oss/entry/UploadFile;
.super Ljava/lang/Object;
.source "UploadFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/oss/entry/UploadFile$FileGetter;,
        Lcom/zte/oss/entry/UploadFile$FILE_TYPE;
    }
.end annotation


# static fields
.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_UNKNOWN:I = 0x1


# instance fields
.field private file:Ljava/io/File;

.field private fileGetter:Lcom/zte/oss/entry/UploadFile$FileGetter;

.field private fileType:I


# direct methods
.method public constructor <init>(ILcom/zte/oss/entry/UploadFile$FileGetter;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/zte/oss/entry/UploadFile;->fileType:I

    .line 21
    iput-object p2, p0, Lcom/zte/oss/entry/UploadFile;->fileGetter:Lcom/zte/oss/entry/UploadFile$FileGetter;

    return-void
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Lcom/zte/oss/entry/UploadFile;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/zte/oss/entry/UploadFile;->fileGetter:Lcom/zte/oss/entry/UploadFile$FileGetter;

    invoke-interface {v0, p1}, Lcom/zte/oss/entry/UploadFile$FileGetter;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/oss/entry/UploadFile;->file:Ljava/io/File;

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/oss/entry/UploadFile;->file:Ljava/io/File;

    return-object p0
.end method

.method public getFileType()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/zte/oss/entry/UploadFile;->fileType:I

    return p0
.end method
