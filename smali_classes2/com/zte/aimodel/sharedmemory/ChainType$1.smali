.class Lcom/zte/aimodel/sharedmemory/ChainType$1;
.super Ljava/lang/Object;
.source "ChainType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/sharedmemory/ChainType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/zte/aimodel/sharedmemory/ChainType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/aimodel/sharedmemory/ChainType;
    .locals 0

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zte/aimodel/sharedmemory/ChainType;->valueOf(Ljava/lang/String;)Lcom/zte/aimodel/sharedmemory/ChainType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/sharedmemory/ChainType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/aimodel/sharedmemory/ChainType;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/zte/aimodel/sharedmemory/ChainType;
    .locals 0

    .line 62
    new-array p0, p1, [Lcom/zte/aimodel/sharedmemory/ChainType;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/sharedmemory/ChainType$1;->newArray(I)[Lcom/zte/aimodel/sharedmemory/ChainType;

    move-result-object p0

    return-object p0
.end method
