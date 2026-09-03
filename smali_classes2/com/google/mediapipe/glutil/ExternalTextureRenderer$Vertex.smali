.class Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;
.super Ljava/lang/Object;
.source "ExternalTextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/glutil/ExternalTextureRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Vertex"
.end annotation


# instance fields
.field x:F

.field y:F


# direct methods
.method constructor <init>(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;->x:F

    .line 192
    iput p2, p0, Lcom/google/mediapipe/glutil/ExternalTextureRenderer$Vertex;->y:F

    return-void
.end method
