.class public interface abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;
.super Ljava/lang/Object;
.source "IFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;
    }
.end annotation


# virtual methods
.method public abstract getIndex()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;
.end method

.method public abstract getPreviewActivity(Landroid/app/Activity;)Ljava/lang/Class;
.end method

.method public abstract getSaveConfigFileName()Ljava/lang/String;
.end method

.method public abstract getSaveConfigKey()Ljava/lang/String;
.end method

.method public abstract getSceneName()Ljava/lang/String;
.end method

.method public abstract getSuccessText()I
.end method

.method public abstract getWallpaperServices()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Landroid/service/wallpaper/WallpaperService;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEnableWallPaper()Z
.end method
