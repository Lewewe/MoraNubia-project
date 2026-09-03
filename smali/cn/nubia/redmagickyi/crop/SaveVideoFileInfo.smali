.class public Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;
.super Ljava/lang/Object;
.source "SaveVideoFileInfo.java"


# instance fields
.field public mDirectory:Ljava/io/File;

.field public mFile:Ljava/io/File;

.field public mFileName:Ljava/lang/String;

.field public mFolderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFile:Ljava/io/File;

    .line 7
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    .line 11
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFolderName:Ljava/lang/String;

    return-void
.end method
