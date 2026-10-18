.class public final Lu0/c;
.super Lu0/a;
.source "CreationExtras.kt"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lu0/a$a;->b:Lu0/a$a;

    const-string v1, "initialExtras"

    .line 2
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lu0/a;-><init>()V

    .line 4
    iget-object v1, p0, Lu0/a;->a:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Lu0/a;->a:Ljava/util/LinkedHashMap;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lu0/a;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lu0/a;-><init>()V

    .line 7
    iget-object v0, p0, Lu0/a;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lu0/a;->a:Ljava/util/LinkedHashMap;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
