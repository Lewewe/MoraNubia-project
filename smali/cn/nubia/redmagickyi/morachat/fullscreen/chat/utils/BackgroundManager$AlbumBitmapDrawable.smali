.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumBitmapDrawable"
.end annotation


# instance fields
.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 140
    invoke-direct {p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 141
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;->setUri(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;->uri:Ljava/lang/String;

    return-void
.end method
