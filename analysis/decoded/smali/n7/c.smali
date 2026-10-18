.class public final Ln7/c;
.super Ljava/lang/Object;
.source "SerializationStrategyConverter.kt"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/MediaType;

.field public final b:Lkotlinx/serialization/SerializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/SerializationStrategy<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ln7/d;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;Lkotlinx/serialization/SerializationStrategy;Ln7/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MediaType;",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;",
            "Ln7/d;",
            ")V"
        }
    .end annotation

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saver"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/c;->a:Lokhttp3/MediaType;

    iput-object p2, p0, Ln7/c;->b:Lkotlinx/serialization/SerializationStrategy;

    iput-object p3, p0, Ln7/c;->c:Ln7/d;

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ln7/c;->c:Ln7/d;

    iget-object v1, p0, Ln7/c;->a:Lokhttp3/MediaType;

    iget-object v2, p0, Ln7/c;->b:Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v0, v1, v2, p1}, Ln7/d;->c(Lokhttp3/MediaType;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method
