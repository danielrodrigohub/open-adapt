.class public final Lw4/a;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/a$b;,
        Lw4/a$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lu6/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/x<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lw4/a$c;


# direct methods
.method public constructor <init>(Lw4/a$b;Lu6/x;Lw4/a$c;Lw4/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p4, p1, Lw4/a$b;->a:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lw4/a;->a:Ljava/lang/String;

    .line 4
    iget p4, p1, Lw4/a$b;->b:I

    .line 5
    iput p4, p0, Lw4/a;->b:I

    .line 6
    iget-object p4, p1, Lw4/a$b;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lw4/a;->c:Ljava/lang/String;

    .line 8
    iget p4, p1, Lw4/a$b;->d:I

    .line 9
    iput p4, p0, Lw4/a;->d:I

    .line 10
    iget-object p4, p1, Lw4/a$b;->g:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lw4/a;->f:Ljava/lang/String;

    .line 12
    iget-object p4, p1, Lw4/a$b;->h:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lw4/a;->g:Ljava/lang/String;

    .line 14
    iget p4, p1, Lw4/a$b;->f:I

    .line 15
    iput p4, p0, Lw4/a;->e:I

    .line 16
    iget-object p1, p1, Lw4/a$b;->i:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lw4/a;->h:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lw4/a;->i:Lu6/x;

    .line 19
    iput-object p3, p0, Lw4/a;->j:Lw4/a$c;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lw4/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lw4/a;

    .line 3
    iget-object v2, p0, Lw4/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lw4/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lw4/a;->b:I

    iget v3, p1, Lw4/a;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lw4/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lw4/a;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lw4/a;->d:I

    iget v3, p1, Lw4/a;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lw4/a;->e:I

    iget v3, p1, Lw4/a;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lw4/a;->i:Lu6/x;

    iget-object v3, p1, Lw4/a;->i:Lu6/x;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v2, v3}, Lu6/h0;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lw4/a;->j:Lw4/a$c;

    iget-object v3, p1, Lw4/a;->j:Lw4/a$c;

    .line 8
    invoke-virtual {v2, v3}, Lw4/a$c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/a;->f:Ljava/lang/String;

    iget-object v3, p1, Lw4/a;->f:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/a;->g:Ljava/lang/String;

    iget-object v3, p1, Lw4/a;->g:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/a;->h:Ljava/lang/String;

    iget-object p1, p1, Lw4/a;->h:Ljava/lang/String;

    .line 11
    invoke-static {v2, p1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lw4/a;->a:Ljava/lang/String;

    const/16 v1, 0xd9

    const/16 v2, 0x1f

    .line 2
    invoke-static {v0, v1, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget v1, p0, Lw4/a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lw4/a;->c:Ljava/lang/String;

    .line 5
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 6
    iget v1, p0, Lw4/a;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lw4/a;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lw4/a;->i:Lu6/x;

    invoke-virtual {v1}, Lu6/x;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-object v0, p0, Lw4/a;->j:Lw4/a$c;

    invoke-virtual {v0}, Lw4/a$c;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lw4/a;->f:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lw4/a;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lw4/a;->h:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method
