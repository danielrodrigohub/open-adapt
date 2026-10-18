.class public abstract Lt6/b$c;
.super Lt6/b$a;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt6/b$a;-><init>()V

    const-string v0, "CharMatcher.none()"

    .line 2
    iput-object v0, p0, Lt6/b$c;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt6/b$c;->h:Ljava/lang/String;

    return-object v0
.end method
