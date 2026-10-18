.class public final Lu4/c;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Lu4/h;


# instance fields
.field public final a:Ll5/j$a;


# direct methods
.method public constructor <init>(Ll5/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu4/c;->a:Ll5/j$a;

    return-void
.end method


# virtual methods
.method public final a()Ll5/j;
    .locals 1

    iget-object v0, p0, Lu4/c;->a:Ll5/j$a;

    invoke-interface {v0}, Ll5/j$a;->a()Ll5/j;

    move-result-object v0

    return-object v0
.end method
