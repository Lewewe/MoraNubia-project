.class public Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze;
.super Lcom/zte/aimodel/feature/IFeature;
.source "FeaturePictureAnalyze.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FeaturePictureAnalyze"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/zte/aimodel/feature/IFeature;-><init>()V

    return-void
.end method

.method private getImpl(Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;)Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;
    .locals 0

    .line 13
    invoke-virtual {p1}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getPictureAnalyzeImpl()Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze;->getFeatureGetter()Lcom/zte/aimodel/feature/IFeature$IGetter;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;->setFeatureGetter(Lcom/zte/aimodel/feature/IFeature$IGetter;)V

    return-object p1
.end method


# virtual methods
.method public analyze(Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I
    .locals 1

    .line 19
    invoke-static {}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getCurrent()Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze;->getImpl(Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;)Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;->analyze(Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I

    move-result p0

    return p0
.end method

.method public analyze(Ljava/lang/String;[Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I
    .locals 1

    .line 23
    invoke-static {}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getCurrent()Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze;->getImpl(Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;)Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;->analyze(Ljava/lang/String;[Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I

    move-result p0

    return p0
.end method
