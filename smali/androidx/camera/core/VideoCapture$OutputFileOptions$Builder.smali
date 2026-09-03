.class public final Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture$OutputFileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContentValues:Landroid/content/ContentValues;

.field private mFile:Ljava/io/File;

.field private mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

.field private mSaveCollection:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    .line 1698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1699
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mContentResolver:Landroid/content/ContentResolver;

    .line 1700
    iput-object p2, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mSaveCollection:Landroid/net/Uri;

    .line 1701
    iput-object p3, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1671
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/VideoCapture$OutputFileOptions;
    .locals 7

    .line 1720
    new-instance v6, Landroidx/camera/core/VideoCapture$OutputFileOptions;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mFile:Ljava/io/File;

    iget-object v2, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mSaveCollection:Landroid/net/Uri;

    iget-object v4, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mContentValues:Landroid/content/ContentValues;

    iget-object v5, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/camera/core/VideoCapture$OutputFileOptions;-><init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroidx/camera/core/VideoCapture$Metadata;)V

    return-object v6
.end method

.method public setMetadata(Landroidx/camera/core/VideoCapture$Metadata;)Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
    .locals 0

    .line 1711
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

    return-object p0
.end method
