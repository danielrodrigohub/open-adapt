.class public final Lokhttp3/MultipartReader$Part;
.super Ljava/lang/Object;
.source "MultipartReader.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field private final body:Lde/f;

.field private final headers:Lokhttp3/Headers;


# direct methods
.method public constructor <init>(Lokhttp3/Headers;Lde/f;)V
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/MultipartReader$Part;->headers:Lokhttp3/Headers;

    .line 3
    iput-object p2, p0, Lokhttp3/MultipartReader$Part;->body:Lde/f;

    return-void
.end method


# virtual methods
.method public final body()Lde/f;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartReader$Part;->body:Lde/f;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartReader$Part;->body:Lde/f;

    invoke-interface {v0}, Lde/j0;->close()V

    return-void
.end method

.method public final headers()Lokhttp3/Headers;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartReader$Part;->headers:Lokhttp3/Headers;

    return-object v0
.end method
