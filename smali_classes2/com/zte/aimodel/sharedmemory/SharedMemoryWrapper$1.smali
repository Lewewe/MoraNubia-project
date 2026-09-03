.class Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper$1;
.super Ljava/lang/Object;
.source "SharedMemoryWrapper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;
    .locals 0

    .line 17
    new-instance p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

    invoke-direct {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 14
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;
    .locals 0

    .line 23
    new-array p0, p1, [Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

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

    .line 14
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper$1;->newArray(I)[Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

    move-result-object p0

    return-object p0
.end method
