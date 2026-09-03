.class public Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;
.super Ljava/lang/Object;
.source "PlayerType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreloadFileName()Ljava/lang/String;
    .locals 1

    .line 5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Must override method getPreloadFileName(), because preload-file\'s name cannot be null!!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
