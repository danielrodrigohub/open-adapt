.class public final Ly2/w;
.super Ljava/lang/Object;
.source "ParcelFileDescriptorBitmapDecoder.java"

# interfaces
.implements Lp2/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp2/j<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly2/n;


# direct methods
.method public constructor <init>(Ly2/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly2/w;->a:Ly2/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lp2/h;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 2
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "HUAWEI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "HONOR"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p1

    const-wide/32 v3, 0x20000000

    cmp-long p1, p1, v3

    if-gtz p1, :cond_2

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Ly2/w;->a:Ly2/n;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    :cond_3
    return v1
.end method

.method public final b(Ljava/lang/Object;IILp2/h;)Lr2/w;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 2
    iget-object v0, p0, Ly2/w;->a:Ly2/n;

    .line 3
    new-instance v1, Ly2/t$c;

    iget-object v2, v0, Ly2/n;->d:Ljava/util/List;

    iget-object v3, v0, Ly2/n;->c:Ls2/b;

    invoke-direct {v1, p1, v2, v3}, Ly2/t$c;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ls2/b;)V

    sget-object v5, Ly2/n;->j:Ly2/n$a;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ly2/n;->a(Ly2/t;IILp2/h;Ly2/n$b;)Lr2/w;

    move-result-object p1

    return-object p1
.end method
