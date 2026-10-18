.class public final Ln7/d$a;
.super Ln7/d;
.source "Serializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lkotlinx/serialization/StringFormat;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/StringFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln7/d;-><init>()V

    .line 2
    iput-object p1, p0, Ln7/d$a;->a:Lkotlinx/serialization/StringFormat;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/DeserializationStrategy;Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;",
            "Lokhttp3/ResponseBody;",
            ")TT;"
        }
    .end annotation

    const-string v0, "loader"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    const-string v0, "body.string()"

    invoke-static {p2, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ln7/d$a;->a:Lkotlinx/serialization/StringFormat;

    .line 3
    invoke-interface {v0, p1, p2}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lkotlinx/serialization/SerialFormat;
    .locals 1

    iget-object v0, p0, Ln7/d$a;->a:Lkotlinx/serialization/StringFormat;

    return-object v0
.end method

.method public final c(Lokhttp3/MediaType;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/MediaType;",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;TT;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saver"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln7/d$a;->a:Lkotlinx/serialization/StringFormat;

    .line 2
    invoke-interface {v0, p2, p3}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    const-string p2, "RequestBody.create(contentType, string)"

    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
